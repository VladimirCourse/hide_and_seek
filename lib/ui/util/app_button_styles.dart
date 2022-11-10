import 'package:flutter/material.dart';
import 'package:hide_and_seek/ui/util/app_colors.dart';

class AppButtonStyles {
  static ButtonStyle get main {
    return TextButton.styleFrom(
      minimumSize: const Size(180, 50),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(0),
        side: const BorderSide(color: AppColors.primary),
      ),
      textStyle: const TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.w300,
      ),
    );
  }
}
