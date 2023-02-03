import 'package:flutter/material.dart';

import '../../color/app_colors.dart';

class DetailsTitleText extends StatelessWidget {
  const DetailsTitleText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              "Cappuccino",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w600,
              ),
            ),
            Text(
              r"($550.00)",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
        Row(
          children: const [
            Icon(
              Icons.grade,
              color: AppColors.starYellow,
            ),
            Text("5.0")
          ],
        )
      ],
    );
  }
}
