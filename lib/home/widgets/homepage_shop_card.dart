import 'dart:ui';

import 'package:flutter/material.dart';

import '../../color/app_colors.dart';
import '../../enum/asset_enums.dart';

class HomePageShopCard extends StatelessWidget {
  const HomePageShopCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 154,
          width: 177,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: Shops.asleyCoffe.toImage,
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.circular(15),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Container(
                clipBehavior: Clip.antiAlias,
                width: 70,
                height: 25,
                decoration: const BoxDecoration(
                  borderRadius:
                      BorderRadius.only(bottomLeft: Radius.circular(15)),
                ),
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 3, sigmaY: 3),
                  child: Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(
                          Icons.location_on_outlined,
                          color: Colors.white,
                          size: 14,
                        ),
                        Text(
                          "1.5 km",
                          style: DefaultTextStyle.of(context).style.copyWith(
                                fontSize: 11,
                                color: Colors.white,
                              ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Asley Coffee",
              style: DefaultTextStyle.of(context).style.copyWith(
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                  ),
            ),
            Row(
              children: [
                const Icon(
                  Icons.grade,
                  color: AppColors.starYellow,
                  size: 15,
                ),
                Text(
                  "5.0 / 105 ratings",
                  style: DefaultTextStyle.of(context).style.copyWith(
                        fontWeight: FontWeight.w500,
                        fontSize: 10,
                        color: AppColors.textGrey,
                      ),
                )
              ],
            ),
          ],
        ),
      ],
    );
  }
}
