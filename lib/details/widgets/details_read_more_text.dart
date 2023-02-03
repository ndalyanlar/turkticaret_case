import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';

import '../../color/app_colors.dart';

class DetailsReadMoreText extends StatelessWidget {
  const DetailsReadMoreText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const ReadMoreText(
      'A cappuccino is an espresso-based coffee drink that originated in Austria with later development taking place in Italy..',
      trimLines: 2,
      trimMode: TrimMode.Line,
      trimCollapsedText: 'Read more',
      trimExpandedText: 'Read less',
      style: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w400,
        color: AppColors.textGrey,
      ),
      moreStyle: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w400,
        color: AppColors.orange,
      ),
      lessStyle: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w400,
        color: AppColors.orange,
      ),
    );
  }
}
