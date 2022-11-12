import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hide_and_seek/model/device_model.dart';
import 'package:hide_and_seek/repository/device/audio_device_repository.dart';
import 'package:hide_and_seek/repository/device/bluetooth_device_repository.dart';

part 'locator_bloc.freezed.dart';
part 'locator_event.dart';
part 'locator_state.dart';

class LocatorBloc extends Bloc<LocatorEvent, LocatorState> {
  final BluetoothDeviceRepository bluetoothRepository;
  final AudioDeviceRepository audioRepository;

  StreamSubscription? _bluetoothSubscription;
  StreamSubscription? _audioSubscription;

  List<DeviceModel> _devices = [];
  List<DeviceModel> _bluetoothDevices = [];
  List<DeviceModel> _audioDevices = [];

  bool get _isScanning => audioRepository.isScanning || bluetoothRepository.isScanning;

  LocatorBloc({
    required this.bluetoothRepository,
    required this.audioRepository,
  }) : super(const LocatorState()) {
    _bluetoothSubscription = bluetoothRepository.devices.listen((devices) {
      _bluetoothDevices = devices;
      _devices = (_bluetoothDevices + _audioDevices)..sort((d1, d2) => d1.signal.compareTo(d2.signal));
    });

    _audioSubscription = audioRepository.devices.listen((devices) {
      _audioDevices = devices;
      _devices = (_bluetoothDevices + _audioDevices)..sort((d1, d2) => d1.signal.compareTo(d2.signal));
    });

    on<_StartScan>(_handleStartScan);
    on<_StopScan>(_handleStopScan);
    on<_RefreshDevices>(_handleRefreshDevices);
  }

  void _handleStartScan(_StartScan event, Emitter<LocatorState> emit) async {
    try {
      await bluetoothRepository.startScan(
        onError: () {
          _stopScan();
          event.onError?.call();
        },
      );

      await audioRepository.startScan(
        onError: () {
          _stopScan();
          event.onError?.call();
        },
      );

      emit(LocatorState(isScanning: _isScanning, devices: _devices));
    } catch (ex) {
      event.onError?.call();
    }
  }

  void _handleStopScan(_StopScan event, Emitter<LocatorState> emit) async {
    try {
      await _stopScan();

      _devices = [];

      emit(LocatorState(isScanning: _isScanning));
    } catch (ex) {
      event.onError?.call();
    }
  }

  void _handleRefreshDevices(_RefreshDevices event, Emitter<LocatorState> emit) async {
    emit(LocatorState(isScanning: _isScanning, devices: _devices));
  }

  Future<void> _stopScan() async {
    await audioRepository.stopScan();
    await bluetoothRepository.stopScan();
  }

  @override
  Future<void> close() async {
    await _stopScan();

    await _bluetoothSubscription?.cancel();
    await _audioSubscription?.cancel();

    super.close();
  }
}
