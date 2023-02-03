import 'package:flutter/material.dart';

import 'widgets/index.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.zero,
      children: [
        const Padding(
          padding: EdgeInsets.only(left: 30.0, right: 30.0, top: 51),
          child: HomePageHeader(),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(vertical: 30, horizontal: 30),
          child: HomePageSearchTextField(),
        ),
        const TitleTextWidget("Popular Coffee"),
        SizedBox(
          height: 277,
          child: ListView.builder(
            clipBehavior: Clip.antiAlias,
            itemCount: 4,
            padding: const EdgeInsets.only(left: 20, right: 30, top: 20),
            scrollDirection: Axis.horizontal,
            itemBuilder: (BuildContext context, int index) {
              return const HomePageCoffeCard();
            },
          ),
        ),
        TitleTextWidget(
          "Nearest coffee shops",
          onPressed: () {},
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Padding(
            padding: const EdgeInsets.only(top: 20, left: 30, right: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                HomePageShopCard(),
                SizedBox(width: 14),
                HomePageShopCard(),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
