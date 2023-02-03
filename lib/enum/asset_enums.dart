import 'package:flutter/material.dart';

enum Products {
  profile,
  cappuccino,
  cappuccinoBig,
  chocolateCoffee,
  coffe,
  coffe2;

  AssetImage get toImage {
    switch (this) {
      case Products.profile:
        return const AssetImage("assets/profile_images/profile.png");
      case Products.cappuccino:
        return const AssetImage("assets/product_images/coffe_1.png");
      case Products.chocolateCoffee:
        return const AssetImage("assets/product_images/coffe_2.png");
      case Products.coffe:
        return const AssetImage("assets/product_images/coffe_3.png");
      case Products.coffe2:
        return const AssetImage("assets/product_images/coffe_4.png");
      case Products.cappuccinoBig:
        return const AssetImage("assets/product_images/coffe_1_big.png");
    }
  }
}

enum Shops {
  asleyCoffe,
  oldTownCoffe;

  AssetImage get toImage {
    switch (this) {
      case Shops.asleyCoffe:
        return const AssetImage("assets/shop_images/shop_1.png");
      case Shops.oldTownCoffe:
        return const AssetImage("assets/shop_images/shop_2.png");
    }
  }
}

enum ProductDetails {
  coffeeBean,
  milkCartoon,
  whippedCream;

  AssetImage get toImage {
    switch (this) {
      case ProductDetails.coffeeBean:
        return const AssetImage("assets/product_images/coffe_beans.png");
      case ProductDetails.milkCartoon:
        return const AssetImage("assets/product_images/milk_cartoon.png");
      case ProductDetails.whippedCream:
        return const AssetImage("assets/product_images/whipped_cream.png");
    }
  }
}
