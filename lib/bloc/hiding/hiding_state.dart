part of 'hiding_bloc.dart';

enum SingalType { audio, bluetooth }

@freezed
class HidingState with _$HidingState {
  const factory HidingState({
    required String id,
    required SingalType singalType,
    @Default(false) bool isLoading,
    @Default(false) bool isSending,
  }) = _HidingState;
}
