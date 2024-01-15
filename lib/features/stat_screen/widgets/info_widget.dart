import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fox_fit/core/ui_kit/ui_kits.dart';

class InfoWidget extends StatelessWidget {
  const InfoWidget({
    super.key,
    required this.title,
    required this.description,
    required this.assetsPath,
    required this.backgrountGradient,
  });

  final String title;
  final String description;
  final String assetsPath;
  final LinearGradient backgrountGradient;

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        gradient: backgrountGradient,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Padding(
        padding: const EdgeInsets.only(
          top: 14,
          left: 11,
          right: 11,
          bottom: 11,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisSize: MainAxisSize.min,
          children: [
            SvgPicture.asset(
              assetsPath,
              alignment: Alignment.centerLeft,
            ),
            const SizedBox(height: 8),
            Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                    text: '$title\n',
                    style: AppTextStyles.tabBarDecorated.copyWith(
                      fontSize: 13,
                    ),
                  ),
                  TextSpan(
                    text: description,
                    style: AppTextStyles.tabBarDecorated.copyWith(
                      color: AppColors.appBarGrey,
                      fontWeight: FontWeight.w700,
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
