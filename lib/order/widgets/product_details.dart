import 'package:flutter/material.dart';

import '../../color/app_colors.dart';
import '../../enum/asset_enums.dart';

class OrderPageProductDetails extends StatelessWidget {
  const OrderPageProductDetails({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: AppColors.containerBackground,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: 106,
            width: 81,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image: DecorationImage(
                image: Products.cappuccinoBig.toImage,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 9),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Capaccino",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    "One 500 ml with extra ice",
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SizedBox(
                  width: 33,
                  height: 33,
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
                  width: 33,
                  height: 33,
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
              ],
            ),
          )
        ],
      ),
    );
  }
}
