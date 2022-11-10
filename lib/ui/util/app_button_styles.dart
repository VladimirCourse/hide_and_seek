import 'package:flutter/material.dart';
import 'package:hide_and_seek/ui/util/app_colors.dart';

class AppButtonStyles {
  static ButtonStyle get main {
    return ElevatedButton.styleFrom(
      minimumSize: const Size(180, 50),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      primary: Colors.transparent,
      onSurface: Colors.transparent,
      shadowColor: Colors.transparent,
      textStyle: const TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w300,
      ),
    );
  }
}
