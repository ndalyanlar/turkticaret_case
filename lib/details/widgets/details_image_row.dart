import 'package:flutter/material.dart';

import '../../color/app_colors.dart';
import '../../enum/asset_enums.dart';

class DetailsImageRow extends StatelessWidget {
  const DetailsImageRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          decoration: BoxDecoration(
            color: AppColors.lightOrange,
            borderRadius: BorderRadius.circular(20),
          ),
          height: 73,
          width: 73,
          child: Center(
            child: Image.asset(
              ProductDetails.coffeeBean.toImage.assetName,
              width: 34,
              height: 34,
            ),
          ),
        ),
        Container(
          decoration: BoxDecoration(
            color: AppColors.lightOrange,
            borderRadius: BorderRadius.circular(20),
          ),
          height: 73,
          width: 73,
          child: Center(
            child: Image.asset(
              ProductDetails.milkCartoon.toImage.assetName,
              width: 34,
              height: 34,
            ),
          ),
        ),
        Container(
          decoration: BoxDecoration(
            color: AppColors.lightOrange,
            borderRadius: BorderRadius.circular(20),
          ),
          height: 73,
          width: 73,
          child: Center(
            child: Image.asset(
              ProductDetails.whippedCream.toImage.assetName,
              width: 34,
              height: 34,
            ),
          ),
        )
      ],
    );
  }
}
