import 'package:flutter/material.dart';

import '../home/widgets/title_text.dart';
import 'widgets/index.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            const DetailsSliverAppBar(),
            SliverToBoxAdapter(
              child: Column(
                children: const [
                  Padding(
                    padding: EdgeInsets.only(
                      left: 30,
                      right: 30,
                      top: 19,
                    ),
                    child: DetailsTitleText(),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 30,
                    ),
                    child: DetailsReadMoreText(),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      vertical: 35,
                    ),
                    child: DetailsImageRow(),
                  ),
                  TitleTextWidget("Choose size"),
                  Padding(
                    padding: EdgeInsets.only(top: 15, left: 15, right: 15),
                    child: DetailsSizeOptions(),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: const SafeArea(
        child: DetailsBottomWidgets(),
      ),
    );
  }
}
