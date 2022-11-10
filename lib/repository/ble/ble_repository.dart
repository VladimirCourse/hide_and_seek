import 'package:hide_and_seek/model/device_model.dart';

abstract class BLERepository {
  String get deviceId;

  Stream<List<DeviceModel>> get devices;

  Future<void> startScan();

  Future<void> stopScan();

  Future<void> sendSignal();

  Future<void> close();
}
