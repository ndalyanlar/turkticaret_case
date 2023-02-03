import 'package:flutter/material.dart';

import '../../color/app_colors.dart';
import '../../enum/asset_enums.dart';

class HomePageHeader extends StatelessWidget {
  const HomePageHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text.rich(
          const TextSpan(
            children: <TextSpan>[
              TextSpan(text: ' Get your '),
              TextSpan(
                  text: 'Coffe', style: TextStyle(color: AppColors.orange)),
              TextSpan(text: ' \n on one finger tap!'),
            ],
          ),
          style: DefaultTextStyle.of(context).style.copyWith(
                fontWeight: FontWeight.w600,
                fontSize: 25,
              ),
        ),
        SizedBox.square(
          dimension: 58,
          child: CircleAvatar(
            foregroundImage: Products.profile.toImage,
          ),
        ),
      ],
    );
  }
}
