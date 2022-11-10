part of 'locator_bloc.dart';

@freezed
class LocatorState with _$LocatorState {
  const factory LocatorState({
    @Default([]) List<DeviceModel> devices,
    @Default(false) bool isScanning,
  }) = _LocatorState;
}
