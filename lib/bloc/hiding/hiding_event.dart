part of 'hiding_bloc.dart';

typedef ErrorCallback = void Function();

@freezed
class HidingEvent with _$HidingEvent {
  const factory HidingEvent.sendAudio({ErrorCallback? onError}) = _SendAudio;

  const factory HidingEvent.sendluetooth({ErrorCallback? onError}) = _SendBluetooth;
}
