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
  }) : super(const LocatorState.data()) {
    _subscription = repository.devices.listen((devices) => _devices = devices);

    on<_StartScan>(_handleStartScan);
    on<_RefreshDevices>(_handleRefreshDevices);
  }

  void _handleStartScan(_StartScan event, Emitter<LocatorState> emit) async {
    repository.startScan();
  }

  void _handleRefreshDevices(_RefreshDevices event, Emitter<LocatorState> emit) async {
    print(_devices);
    emit(LocatorState.data(devices: _devices..sort((d1, d2) => d1.signal.compareTo(d2.signal))));
  }

  @override
  Future<void> close() async {
    await _subscription?.cancel();

    super.close();
  }
}
