import 'dart:math';

class DeviceModel {
  final String id;
  final int signal;
  final String name;

  const DeviceModel({
    required this.id,
    required this.signal,
    required this.name,
  });
}

extension DeviceModelExtension on DeviceModel {
  static const kMinLevel = 40;

  int get color => int.parse('ff$id', radix: 16);

  int get distance => (kMinLevel - signal).abs() ~/ 10;
}
