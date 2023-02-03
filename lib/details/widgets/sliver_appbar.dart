import 'package:flutter/material.dart';

import '../../enum/asset_enums.dart';

class DetailsSliverAppBar extends StatelessWidget {
  const DetailsSliverAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: Colors.transparent,
      expandedHeight: 300,
      automaticallyImplyLeading: false,
      flexibleSpace: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 14,
        ),
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: Products.cappuccinoBig.toImage,
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(
                  30,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10.0, top: 4),
                  child: Container(
                    width: 34,
                    height: 34,
                    decoration: const BoxDecoration(
                      color: Colors.white24,
                      shape: BoxShape.circle,
                    ),
                    child: FittedBox(
                      child: IconButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          icon: const Icon(
                            Icons.arrow_back_rounded,
                            color: Colors.white,
                            size: 30,
                          )),
                    ),
                  ),
                ),
                Text(
                  "Details",
                  style: Theme.of(context).textTheme.titleLarge?.copyWith(
                        fontSize: 18,
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                      ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 10.0, top: 4),
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
              ],
            )
          ],
        ),
      ),
    );
  }
}
