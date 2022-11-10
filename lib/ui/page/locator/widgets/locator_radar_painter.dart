import 'dart:math';

import 'package:flutter/material.dart';
import 'package:hide_and_seek/model/device_model.dart';
import 'package:hide_and_seek/ui/util/app_colors.dart';

class LocatorRadarPainter extends CustomPainter {
  final double angle;
  final List<DeviceModel> devices;

  LocatorRadarPainter({
    required this.angle,
    required this.devices,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = AppColors.primary
      ..strokeWidth = 1
      ..style = PaintingStyle.stroke;

    final radius = size.width * 0.5;
    final dradius = size.width * 0.5 / 4;
    final center = Offset(size.width * 0.5, size.height * 0.5);

    for (int i = 0; i < 4; i++) {
      canvas.drawCircle(center, radius - dradius * i, paint);
    }

    paint
      ..style = PaintingStyle.fill
      ..shader = SweepGradient(
        startAngle: 0,
        endAngle: 2,
        colors: [AppColors.primary.withOpacity(0.1), AppColors.primary],
        transform: GradientRotation(angle),
      ).createShader(
        Rect.fromCircle(center: center, radius: radius),
      );

    canvas.drawArc(Rect.fromCircle(center: center, radius: radius), angle, 2, true, paint);
    // print(size.width);
    for (final device in devices) {
      final range = device.signal;
      final angle = (device.color % 360) * pi / 180;
      final opacity = 1 - this.angle / (2 * pi);
      // print(this.angle / (2 * pi));

      final paint = Paint();
      final position = Offset(range * cos(angle) + center.dx, range * sin(angle) + center.dy);

      canvas.drawCircle(position, 6, paint..color = AppColors.primary.withOpacity(opacity));
      canvas.drawCircle(position, 5, paint..color = Color(device.color).withOpacity(opacity));

      // print(device.color % size.width);
      // final x = range * cos(radians)
      // print(color);
    }
  }

  @override
  bool shouldRepaint(LocatorRadarPainter oldDelegate) => oldDelegate.angle != angle;

  @override
  bool shouldRebuildSemantics(LocatorRadarPainter oldDelegate) => false;
}
