import 'package:flutter/material.dart';
import 'package:hide_and_seek/ui/util/app_button_styles.dart';
import 'package:hide_and_seek/ui/util/app_colors.dart';

class PrimaryButton extends StatelessWidget {
  final Gradient gradient;
  final String title;
  final VoidCallback onPressed;

  const PrimaryButton({
    super.key,
    required this.title,
    required this.gradient,
    required this.onPressed,
  });

  factory PrimaryButton.accept({required String title, required VoidCallback onPressed}) {
    return PrimaryButton(
      title: title,
      gradient: AppColors.acceptGradient,
      onPressed: onPressed,
    );
  }

  factory PrimaryButton.cancel({required String title, required VoidCallback onPressed}) {
    return PrimaryButton(
      title: title,
      gradient: AppColors.cancelGradient,
      onPressed: onPressed,
    );
  }

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        gradient: gradient,
        boxShadow: [BoxShadow(color: gradient.colors.first.withOpacity(0.5), blurRadius: 1, spreadRadius: 0.2)],
      ),
      child: ElevatedButton(
        style: AppButtonStyles.main,
        onPressed: onPressed,
        child: Text(title),
      ),
    );
  }
}
