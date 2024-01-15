import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fox_fit/core/ui_kit/ui_kits.dart';

class NotificationWidget extends StatelessWidget {
  const NotificationWidget({
    super.key,
    this.count,
  });

  final int? count;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 21),
      child: SizedBox(
        height: 32,
        width: 32,
        child: Stack(
          children: [
            if (count != null && count != 0)
              Align(
                alignment: Alignment.topRight,
                child: CircleAvatar(
                  backgroundColor: AppColors.notificationRed,
                  radius: 8,
                  child: Text(
                    count.toString(),
                    style: AppTextStyles.notificationStyle,
                  ),
                ),
              ),
            Align(
              child: SvgPicture.asset(
                'assets/icons/notificitation_icon.svg',
                height: 20,
                width: 20,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
