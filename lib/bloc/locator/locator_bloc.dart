import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hide_and_seek/model/device_model.dart';
import 'package:hide_and_seek/repository/ble/ble_repository.dart';
import 'package:rxdart/rxdart.dart';

part 'locator_bloc.freezed.dart';

part 'locator_event.dart';
part 'locator_state.dart';

class LocatorBloc extends Bloc<LocatorEvent, LocatorState> {
  final BLERepository repository;

  StreamSubscription? _subscription;

  List<DeviceModel> _devices = [];

  LocatorBloc({
    required this.repository,
  }) : super(const LocatorState()) {
    _subscription = repository.devices.listen(
      (devices) => _devices = devices..sort((d1, d2) => d1.signal.compareTo(d2.signal)),
    );

    on<_StartScan>(_handleStartScan);
    on<_StopScan>(_handleStopScan);
    on<_RefreshDevices>(_handleRefreshDevices);
  }

  void _handleStartScan(_StartScan event, Emitter<LocatorState> emit) async {
    try {
      await repository.startScan(onError: event.onError);

      emit(LocatorState(isScanning: repository.isScanning, devices: _devices));
    } catch (ex) {
      event.onError?.call();
    }
  }

  void _handleStopScan(_StopScan event, Emitter<LocatorState> emit) async {
    try {
      await repository.stopScan();

      _devices = [];

      emit(LocatorState(isScanning: repository.isScanning));
    } catch (ex) {
      event.onError?.call();
    }
  }

  void _handleRefreshDevices(_RefreshDevices event, Emitter<LocatorState> emit) async {
    emit(
      LocatorState(isScanning: repository.isScanning, devices: _devices),
    );
  }

  @override
  Future<void> close() async {
    await _subscription?.cancel();
    await repository.stopScan();

    super.close();
  }
}
