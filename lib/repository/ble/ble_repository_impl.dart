import 'dart:async';
import 'dart:math';

import 'package:collection/collection.dart';
import 'package:flutter_ble_peripheral/flutter_ble_peripheral.dart';
import 'package:flutter_blue_plus/flutter_blue_plus.dart';
import 'package:hide_and_seek/model/device_model.dart';
import 'package:hide_and_seek/repository/ble/ble_repository.dart';
import 'package:rxdart/subjects.dart';

class BLERepositoryImpl extends BLERepository {
  static const serviceId = '30000003-2002-1001-8008-bb11bb';

  final _blePeripheral = FlutterBlePeripheral();

  late final _advertiseData = AdvertiseData(
    serviceUuid: '$serviceId$deviceId',
    includePowerLevel: true,
  );

  final _advertiseSettings = AdvertiseSettings(
    advertiseMode: AdvertiseMode.advertiseModeBalanced,
    txPowerLevel: AdvertiseTxPower.advertiseTxPowerHigh,
    timeout: 0,
    connectable: true,
  );

  final _flutterBlue = FlutterBluePlus.instance;

  final _devicesSubject = BehaviorSubject<List<DeviceModel>>();

  StreamSubscription? _subscription;
  bool _isScanning = false;

  @override
  final String deviceId = Random().nextInt(0xffffff).toRadixString(16);

  @override
  Stream<List<DeviceModel>> get devices => _devicesSubject.stream;

  @override
  Future<void> startScan() async {
    if (!_isScanning) {
      _isScanning = true;

      _subscription = _flutterBlue.scanResults.listen((results) {
        final devices = results
            // .where((e) => e.advertisementData.serviceUuids.firstOrNull?.startsWith(serviceId) ?? false)
            .map((e) {
          final defaultId = (e.device.id.hashCode % 1000000).toRadixString(16).padLeft(6, '0');
          final fullId = e.advertisementData.serviceUuids.firstOrNull ?? defaultId;
          final id = fullId.substring(fullId.length - 6);

          final name = e.advertisementData.localName.trim();

          return DeviceModel(
            id: id,
            signal: e.rssi.abs(),
            name: name.isNotEmpty ? name : id,
          );
        }).toList();
        // print(_devicesSubject.value);
        _devicesSubject.add(devices);
      });

      _flutterBlue.startScan(timeout: const Duration(minutes: 5), allowDuplicates: true);
    }
  }

  @override
  Future<void> stopScan() async {
    await _subscription?.cancel();
    await _flutterBlue.stopScan();

    _isScanning = false;
  }

  @override
  Future<void> sendSignal() async {
    // final Map<Permission, PermissionStatus> statuses = await [
    //   Permission.bluetooth,
    //   Permission.bluetoothAdvertise,
    //   Permission.location,
    // ].request();

    if (!await _blePeripheral.isAdvertising) {
      await _blePeripheral.start(
        advertiseData: _advertiseData,
        advertiseSettings: _advertiseSettings,
      );

      await Future.delayed(const Duration(seconds: 5));

      await _blePeripheral.stop();
    }
  }

  @override
  Future<void> close() async {
    if (await _blePeripheral.isAdvertising) {
      await _blePeripheral.stop();
    }

    await _subscription?.cancel();
    await _devicesSubject.close();

    _isScanning = false;

    if (_isScanning) {
      await _flutterBlue.stopScan();
    }
  }
}
