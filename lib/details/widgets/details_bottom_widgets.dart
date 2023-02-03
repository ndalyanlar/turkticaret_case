import 'package:flutter/material.dart';
import 'package:turkticaret_case/order/order_page.dart';

import '../../color/app_colors.dart';

class DetailsBottomWidgets extends StatelessWidget {
  const DetailsBottomWidgets({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        SizedBox(
          width: 40,
          height: 40,
          child: TextButton(
            style: TextButton.styleFrom(
              backgroundColor: AppColors.lightOrange,
              padding: EdgeInsets.zero,
            ),
            onPressed: () {},
            child: const Icon(
              Icons.remove,
              size: 17,
              color: AppColors.orange,
            ),
          ),
        ),
        const Text(
          "1",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w400,
          ),
        ),
        SizedBox(
          width: 40,
          height: 40,
          child: TextButton(
            style: TextButton.styleFrom(
              backgroundColor: AppColors.orange,
              padding: EdgeInsets.zero,
            ),
            onPressed: () {},
            child: const Icon(
              Icons.add,
              size: 17,
              color: Colors.white,
            ),
          ),
        ),
        TextButton(
            onPressed: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (ctx) => const OrderPage()));
            },
            child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: AppColors.darkGreen,
                ),
                child: const Padding(
                  padding: EdgeInsets.symmetric(vertical: 15, horizontal: 39),
                  child: Text(
                    "Add to cart",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),
                )))
      ],
    );
  }
}
