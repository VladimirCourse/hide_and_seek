part of 'info_bloc.dart';

@freezed
class InfoState with _$InfoState {
  const factory InfoState({
    required bool showAllDevices,
    required Map<String, String> audioIds,
  }) = _InfoState;
}
