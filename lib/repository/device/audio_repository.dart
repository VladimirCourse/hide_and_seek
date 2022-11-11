import 'dart:async';
import 'dart:math';

import 'package:hide_and_seek/model/device_model.dart';
import 'package:hide_and_seek/repository/device/device_repository.dart';
import 'package:noise_meter/noise_meter.dart';
import 'package:rxdart/subjects.dart';
import 'package:tflite_audio/tflite_audio.dart';

class AudioRepository extends DeviceRepository {
  final _devicesSubject = BehaviorSubject<List<DeviceModel>>();

  StreamSubscription? _noiseSubscription;
  StreamSubscription? _recognizingSubscription;

  bool _isScanning = false;
  double _currentNoise = 0;

  @override
  final String deviceId = Random().nextInt(0xffffff).toRadixString(16);

  @override
  bool get isScanning => _isScanning;

  @override
  Stream<List<DeviceModel>> get devices => _devicesSubject.stream;

  @override
  Future<void> init() async {
    await TfliteAudio.loadModel(
      model: 'assets/tflite/soundclassifier_with_metadata.tflite',
      label: 'assets/tflite/labels.txt',
      inputType: 'rawAudio',
      numThreads: 1,
      isAsset: true,
      outputRawScores: true,
    );
  }

  @override
  Future<void> startScan({ErrorCallback? onError}) async {
    if (!_isScanning) {
      _noiseSubscription?.cancel();
      _noiseSubscription = null;

      _isScanning = true;
      print('here');

      try {
        final noiseMeter = NoiseMeter();
        _noiseSubscription = noiseMeter.noiseStream.listen((data) {
          _currentNoise = data.maxDecibel;
        });

        print('here');

        final stream = TfliteAudio.startAudioRecognition(
          sampleRate: 44100,
          bufferSize: 20000,
          detectionThreshold: 0.7,
          averageWindowDuration: 3500,
          numOfInferences: 150,
        );

        const closeSignal = 40;
        const maxSignal = 90;
        const threshold = 0.85;

        _recognizingSubscription = stream.listen((event) {
          final res = event['recognitionResult'].replaceAll('[', '').replaceAll(']', '').split(', ');

          final score = double.tryParse(res.first);
          if (score != null && score > threshold) {
            final signal = (maxSignal - (closeSignal - _currentNoise.toInt()).abs() * 2).abs();
            _devicesSubject.add([DeviceModel(id: '123', signal: signal, name: 'name', source: DeviceSource.audio)]);
          } else {
            _devicesSubject.add([]);
          }

          // print(event['recognitionResult']);
          // print(event["recognitionResult"]);
        });
      } catch (exception) {
        _isScanning = false;

        onError?.call();
      }

      _recognizingSubscription?.onDone(() {
        stopScan();
      });
    }
  }

  @override
  Future<void> stopScan() async {
    await _noiseSubscription?.cancel();
    _noiseSubscription = null;

    await _recognizingSubscription?.cancel();
    _recognizingSubscription = null;

    _currentNoise = 0;

    TfliteAudio.stopAudioRecognition();

    _isScanning = false;
  }

  @override
  Future<void> sendSignal() async {}

  @override
  Future<void> close() async {
    await stopScan();

    await _devicesSubject.close();
  }
}
