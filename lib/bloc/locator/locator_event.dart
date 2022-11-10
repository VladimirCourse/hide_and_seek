part of 'locator_bloc.dart';

@freezed
class LocatorEvent with _$LocatorEvent {
  const factory LocatorEvent.refreshDevices() = _RefreshDevices;

  const factory LocatorEvent.startScan() = _StartScan;

  const factory LocatorEvent.stopScan() = _StopScan;
}
