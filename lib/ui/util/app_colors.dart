import 'package:flutter/material.dart';

class AppColors {
  static const radar = Color(0xFF119900);

  static const hiding = Colors.purple;

  static const pageGradient = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [Color(0xFF242424), Color(0xFF141414)],
  );

  static const acceptGradient = LinearGradient(
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
    colors: [Color(0xFF343434), Color(0xFF2C2C2C)],
  );

  static const cancelGradient = LinearGradient(
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
    colors: [Color(0xFFF73721), Color(0xFFE92D19)],
  );
}
