import 'package:flutter/material.dart';

import '../../color/app_colors.dart';

class TitleTextWidget extends StatelessWidget {
  const TitleTextWidget(
    this.title, {
    super.key,
    this.onPressed,
  });

  final String title;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: DefaultTextStyle.of(context).style.copyWith(
                  fontWeight: FontWeight.w600,
                  fontSize: 20,
                ),
          ),
          if (onPressed != null)
            TextButton(
                onPressed: onPressed,
                child: Text(
                  "View all",
                  style: DefaultTextStyle.of(context).style.copyWith(
                        color: AppColors.orange,
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      ),
                ))
        ],
      ),
    );
  }
}
