part of 'locator_bloc.dart';

typedef ErrorCallback = void Function();

@freezed
class LocatorEvent with _$LocatorEvent {
  const factory LocatorEvent.refreshDevices() = _RefreshDevices;

  const factory LocatorEvent.startScan({ErrorCallback? onError}) = _StartScan;

  const factory LocatorEvent.stopScan({ErrorCallback? onError}) = _StopScan;
}
