import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hide_and_seek/repository/device/audio_device_repository.dart';
import 'package:hide_and_seek/repository/device/bluetooth_device_repository.dart';

part 'hiding_bloc.freezed.dart';
part 'hiding_event.dart';
part 'hiding_state.dart';

class HidingBloc extends Bloc<HidingEvent, HidingState> {
  final BluetoothDeviceRepository bluetoothRepository;
  final AudioDeviceRepository audioRepository;

  HidingBloc({
    required this.bluetoothRepository,
    required this.audioRepository,
  }) : super(HidingState(id: bluetoothRepository.deviceId, singalType: SingalType.bluetooth, isSending: false)) {
    on<_SendAudio>(_handleSendAudio);
    on<_SendBluetooth>(_handleSendBluetooth);
  }

  void _handleSendAudio(_SendAudio event, Emitter<HidingState> emit) async {
    try {
      await bluetoothRepository.stopSignal();
      await audioRepository.startSignal();

      emit(
        HidingState(
          id: audioRepository.deviceId,
          singalType: SingalType.audio,
          isSending: audioRepository.isSending,
        ),
      );
    } catch (ex) {
      event.onError?.call();
    }
  }

  void _handleSendBluetooth(_SendBluetooth event, Emitter<HidingState> emit) async {
    try {
      await audioRepository.stopSignal();
      await bluetoothRepository.startSignal();

      emit(
        HidingState(
          id: bluetoothRepository.deviceId,
          singalType: SingalType.bluetooth,
          isSending: bluetoothRepository.isSending,
        ),
      );
    } catch (ex) {
      event.onError?.call();
    }
  }

  @override
  Future<void> close() async {
    await audioRepository.stopSignal();
    await bluetoothRepository.stopSignal();

    super.close();
  }
}
