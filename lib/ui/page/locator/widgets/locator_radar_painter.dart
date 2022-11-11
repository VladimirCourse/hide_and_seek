import 'dart:math';

import 'package:flutter/material.dart';
import 'package:hide_and_seek/model/device_model.dart';
import 'package:hide_and_seek/ui/util/app_colors.dart';

class LocatorRadarPainter extends CustomPainter {
  final double angle;
  final bool isScanning;
  final List<DeviceModel> devices;

  LocatorRadarPainter({
    required this.isScanning,
    required this.angle,
    required this.devices,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = AppColors.radar
      ..strokeWidth = 1
      ..style = PaintingStyle.stroke;

    final radius = size.width * 0.5;
    final dradius = size.width * 0.5 / 4;
    final center = Offset(size.width * 0.5, size.height * 0.5);

    for (int i = 0; i < 4; i++) {
      paint.maskFilter = const MaskFilter.blur(BlurStyle.normal, 5);
      canvas.drawCircle(center, radius - dradius * i, paint);
      paint.maskFilter = null;
      canvas.drawCircle(center, radius - dradius * i, paint);
    }

    if (isScanning) {
      final paint = Paint()
        ..style = PaintingStyle.fill
        ..color = AppColors.radar
        ..shader = SweepGradient(
          startAngle: 0,
          endAngle: 2,
          colors: [AppColors.radar.withOpacity(0.0), AppColors.radar],
          transform: GradientRotation(angle),
        ).createShader(
          Rect.fromCircle(center: center, radius: radius),
        );

      canvas.drawArc(Rect.fromCircle(center: center, radius: radius), angle, 2, true, paint);
    }

    for (final device in devices) {
      final range = max(0, device.signal);
      final angle = (device.color % 360) * pi / 180;
      final opacity = 1 - this.angle / (2 * pi);

      final paint = Paint();
      final position = Offset(range * cos(angle) + center.dx, range * sin(angle) + center.dy);

      paint.maskFilter = const MaskFilter.blur(BlurStyle.normal, 5);
      canvas.drawCircle(position, 6, paint..color = Color(device.color).withOpacity(opacity));
      paint.maskFilter = null;
      canvas.drawCircle(position, 5, paint..color = Color(device.color).withOpacity(opacity));
    }
  }

  @override
  bool shouldRepaint(LocatorRadarPainter oldDelegate) => oldDelegate.angle != angle;

  @override
  bool shouldRebuildSemantics(LocatorRadarPainter oldDelegate) => false;
}
