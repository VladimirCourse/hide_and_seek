import 'package:hide_and_seek/model/device_model.dart';

typedef ErrorCallback = void Function();

abstract class DeviceRepository {
  String get deviceId;

  bool get isScanning;

  Stream<List<DeviceModel>> get devices;

  Future<void> init();

  Future<void> startScan({ErrorCallback? onError});

  Future<void> stopScan();

  Future<void> sendSignal();

  Future<void> close();
}
