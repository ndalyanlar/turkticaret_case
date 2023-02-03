import 'package:flutter/material.dart';

import '../../color/app_colors.dart';
import '../../enum/asset_enums.dart';
import '../../details/details_page.dart';

class HomePageCoffeCard extends StatelessWidget {
  const HomePageCoffeCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: InkWell(
        onTap: () => Navigator.of(context)
            .push(MaterialPageRoute(builder: (ctx) => const DetailsPage())),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 261,
              height: 180,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: Products.cappuccino.toImage, fit: BoxFit.cover),
                borderRadius: BorderRadius.circular(30),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      right: 10.0,
                      top: 12.0,
                    ),
                    child: Container(
                      width: 34,
                      height: 34,
                      decoration: const BoxDecoration(
                        color: Colors.white24,
                        shape: BoxShape.circle,
                      ),
                      child: FittedBox(
                        child: IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.favorite_outline_rounded,
                              color: Colors.white,
                              size: 30,
                            )),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 12, vertical: 19),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            const Icon(
                              Icons.schedule,
                              color: Colors.white,
                              size: 12,
                            ),
                            Text(
                              " 10 min delivery",
                              style: DefaultTextStyle.of(context)
                                  .style
                                  .copyWith(
                                      fontSize: 14,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w500),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            const Icon(
                              Icons.grade,
                              color: AppColors.starYellow,
                              size: 16,
                            ),
                            Text(
                              "5.0",
                              style:
                                  DefaultTextStyle.of(context).style.copyWith(
                                        fontSize: 14,
                                        color: Colors.white,
                                      ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 13),
            SizedBox(
              width: 261,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Cappuccino",
                        style: DefaultTextStyle.of(context).style.copyWith(
                              fontWeight: FontWeight.w600,
                              fontSize: 18,
                            ),
                      ),
                      Text(
                        "550.00",
                        style: DefaultTextStyle.of(context).style.copyWith(
                              fontWeight: FontWeight.w600,
                              fontSize: 18,
                            ),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      const Icon(
                        Icons.location_on_outlined,
                        color: AppColors.textGrey,
                      ),
                      Text("Coffe cafe",
                          style: DefaultTextStyle.of(context)
                              .style
                              .copyWith(color: AppColors.textGrey)),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
