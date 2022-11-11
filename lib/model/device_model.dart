import 'dart:math';

enum DeviceSource { audio, bluetooth }

class DeviceModel {
  final String id;
  final int signal;
  final String name;
  final DeviceSource source;

  const DeviceModel({
    required this.id,
    required this.signal,
    required this.name,
    required this.source,
  });
}

extension DeviceModelExtension on DeviceModel {
  int get color => int.parse('ff$id', radix: 16);

  int get distance => signal.abs() ~/ 10;
}
