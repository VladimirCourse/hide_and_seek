import 'dart:async';
import 'dart:math';

import 'package:collection/collection.dart';
import 'package:flutter_ble_peripheral/flutter_ble_peripheral.dart';
import 'package:flutter_blue_plus/flutter_blue_plus.dart';
import 'package:hide_and_seek/model/device_model.dart';
import 'package:hide_and_seek/repository/device/device_repository.dart';
import 'package:rxdart/subjects.dart';

class BluetoothRepository extends DeviceRepository {
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
  bool _isSending = false;

  @override
  final String deviceId = Random().nextInt(0xffffff).toRadixString(16);

  @override
  bool get isScanning => _isScanning;

  @override
  bool get isSending => _isSending;

  @override
  Stream<List<DeviceModel>> get devices => _devicesSubject.stream;

  @override
  Future<void> init() async {}

  @override
  Future<void> startScan({ErrorCallback? onError}) async {
    if (!_isScanning) {
      print('started');

      await _subscription?.cancel();
      _subscription = null;

      const closeSignal = 40;

      _subscription = _flutterBlue.scanResults.listen((results) {
        final devices = results.where((e) => DateTime.now().difference(e.timeStamp).inSeconds < 3)
            // .where((e) => e.advertisementData.serviceUuids.firstOrNull?.startsWith(serviceId) ?? false)
            .map((e) {
          final defaultId = (e.device.id.hashCode % 1000000).toRadixString(16).padLeft(6, '0');
          final fullId = e.advertisementData.serviceUuids.firstOrNull ?? defaultId;
          final id = fullId.substring(fullId.length - 6);
          final name = e.advertisementData.localName.trim();

          return DeviceModel(
            id: id,
            signal: (e.rssi.abs() - closeSignal).abs(),
            name: name.isNotEmpty ? name : id,
            source: DeviceSource.bluetooth,
          );
        }).toList();

        _devicesSubject.add(devices);
      });
      _isScanning = true;

      _flutterBlue.startScan(timeout: const Duration(minutes: 5), allowDuplicates: true).onError(
        (error, stackTrace) {
          _isScanning = false;
          onError?.call();
        },
      );

      // _isScanning = false;
    }
  }

  @override
  Future<void> stopScan() async {
    await _subscription?.cancel();
    _subscription = null;

    if (_isScanning) {
      await _flutterBlue.stopScan();
    }

    _isScanning = false;
  }

  @override
  Future<void> startSignal() async {
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

      _isSending = true;
    }
  }

  @override
  Future<void> stopSignal() async {
    if (await _blePeripheral.isAdvertising) {
      await _blePeripheral.stop();

      _isSending = false;
    }
  }

  @override
  Future<void> close() async {
    await stopSignal();
    await stopScan();
    await _devicesSubject.close();
  }
}
