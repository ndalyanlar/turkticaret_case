import 'package:flutter/material.dart';

import '../../color/app_colors.dart';

class DetailsSizeOptions extends StatelessWidget {
  const DetailsSizeOptions({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle(
      style: const TextStyle(
        color: Colors.white,
        fontSize: 18,
        fontWeight: FontWeight.w500,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            decoration: BoxDecoration(
              color: AppColors.darkGreen,
              borderRadius: BorderRadius.circular(8),
            ),
            child: const Padding(
              padding: EdgeInsets.symmetric(vertical: 5, horizontal: 24),
              child: Center(
                  child: Text(
                "100 ml",
              )),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              border: Border.all(
                color: AppColors.darkGreen,
                width: 1.5,
              ),
            ),
            child: const Padding(
              padding: EdgeInsets.symmetric(vertical: 5, horizontal: 24),
              child: Center(
                  child: Text(
                "250 ml",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                  color: Colors.black,
                ),
              )),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              border: Border.all(
                color: AppColors.darkGreen,
                width: 1.5,
              ),
            ),
            child: const Padding(
              padding: EdgeInsets.symmetric(vertical: 5, horizontal: 24),
              child: Center(
                  child: Text(
                "500 ml",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                  color: Colors.black,
                ),
              )),
            ),
          ),
        ],
      ),
    );
  }
}
