import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hide_and_seek/repository/device/audio_repository.dart';
import 'package:hide_and_seek/repository/device/bluetooth_repository.dart';

part 'info_bloc.freezed.dart';
part 'info_event.dart';
part 'info_state.dart';

class InfoBloc extends Bloc<InfoEvent, InfoState> {
  final BluetoothRepository bluetoothRepository;
  final AudioRepository audioRepository;

  InfoBloc({
    required this.bluetoothRepository,
    required this.audioRepository,
  }) : super(
          InfoState(
            showAllDevices: bluetoothRepository.showAllDevices,
            audioIds: {for (var value in AudioRepository.audioTags) value: AudioRepository.idByTag(value)},
          ),
        ) {
    on<_ToggleAllDevices>(_toggleAllDevices);
  }

  void _toggleAllDevices(_ToggleAllDevices event, Emitter<InfoState> emit) async {
    bluetoothRepository.showAllDevices = !bluetoothRepository.showAllDevices;

    emit(state.copyWith(showAllDevices: bluetoothRepository.showAllDevices));
  }
}
