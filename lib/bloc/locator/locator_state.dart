part of 'locator_bloc.dart';

@freezed
class LocatorState with _$LocatorState {
  const factory LocatorState.data({@Default([]) List<DeviceModel> devices}) = _Data;

  const factory LocatorState.error() = _Error;
}
