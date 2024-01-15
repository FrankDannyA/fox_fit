import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fox_fit/core/ui_kit/ui_kits.dart';

class TookWidget extends StatelessWidget {
  const TookWidget({
    super.key,
    required this.categoty,
    required this.place,
    required this.money,
    this.onPressed,
  });

  final String categoty;
  final String place;
  final String money;
  final VoidCallback? onPressed;

  String _minusOne(String number) {
    final input = int.tryParse(number);
    if (input != null && input != 1) {
      final result = input - 1;
      return result.toString();
    } else {
      return '';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 10,
      ),
      child: InkWell(
        onTap: onPressed,
        child: Row(
          children: [
            Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                    text: 'По $categoty: ',
                    style: AppTextStyles.graphitSlim,
                  ),
                  TextSpan(
                    text: '$place место\n',
                    style: AppTextStyles.graphitBold,
                  ),
                  TextSpan(
                    text: 'Нужно $money ₽ до ${_minusOne(place)} места',
                    style: AppTextStyles.graphitSmall,
                  ),
                ],
              ),
            ),
            const Spacer(),
            SvgPicture.asset('assets/icons/arrow_right.svg')
          ],
        ),
      ),
    );
  }
}
