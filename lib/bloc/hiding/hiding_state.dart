part of 'hiding_bloc.dart';

enum SingalType { audio, bluetooth }

@freezed
class HidingState with _$HidingState {
  const factory HidingState({
    required String id,
    required bool isSending,
    required SingalType singalType,
  }) = _HidingState;
}
