import 'package:flutter/material.dart';
import 'package:fox_fit/core/ui_kit/ui_kits.dart';

class GradientButton extends StatelessWidget {
  const GradientButton({
    super.key,
    this.isSelected = false,
    required this.title,
    this.onPressed,
  });

  final bool isSelected;
  final String title;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 8),
        width: 111,
        decoration: BoxDecoration(
          color: isSelected ? null : AppColors.appBarGrey,
          gradient: isSelected ? AppColors.blueAlternativa : null,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Text(
          title,
          textAlign: TextAlign.center,
          style: isSelected
              ? AppTextStyles.tabBarDecorated
              : AppTextStyles.tabBarDecorated.copyWith(
                  foreground: Paint()..shader = AppColors.blueAlternativaShader,
                ),
        ),
      ),
    );
  }
}
