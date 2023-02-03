import 'package:flutter/material.dart';

import 'widgets/index.dart';

class OrderPage extends StatelessWidget {
  const OrderPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        elevation: 0,
        automaticallyImplyLeading: false,
        titleTextStyle: const TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w500,
          color: Colors.black,
        ),
        title: const Text("Place order"),
        leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: const Icon(
              Icons.arrow_back_rounded,
              color: Colors.black,
            )),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 30,
        ),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: const [
              OrderPageDestinationDetails(),
              SizedBox(height: 37),
              OrderPageProductDetails(),
              SizedBox(height: 37),
              OrderPageProductPrices(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: const SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30),
          child: OrderPagePayNowButton(),
        ),
      ),
    );
  }
}
