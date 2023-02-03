import 'package:flutter/material.dart';

import '../../color/app_colors.dart';

class OrderPagePayNowButton extends StatelessWidget {
  const OrderPagePayNowButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: () {},
        child: Row(
          children: [
            Expanded(
              child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: AppColors.darkGreen,
                  ),
                  child: const Padding(
                    padding: EdgeInsets.symmetric(vertical: 15, horizontal: 39),
                    child: Text(
                      "Pay now",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),
                    ),
                  )),
            ),
          ],
        ));
  }
}
