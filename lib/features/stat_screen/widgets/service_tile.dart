import 'package:flutter/material.dart';
import 'package:fox_fit/core/ui_kit/ui_kits.dart';

class ServiceTile extends StatelessWidget {
  const ServiceTile({
    super.key,
    required this.count,
    required this.name,
  });

  final int count;
  final String name;

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        color: AppColors.scaffoldWhite,
        boxShadow: const [AppColors.mainShadow],
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.only(
          top: 19,
          right: 19,
          bottom: 15,
          left: 19,
        ),
        child: Row(
          children: [
            Text(
              "$count шт",
              style: AppTextStyles.graphitBold.copyWith(
                fontSize: 14,
              ),
            ),
            const SizedBox(width: 10),
            Text(
              name,
              overflow: TextOverflow.ellipsis,
              style: AppTextStyles.graphitSlim.copyWith(
                fontSize: 14,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
