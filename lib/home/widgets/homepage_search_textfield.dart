import 'package:flutter/material.dart';

import '../../color/app_colors.dart';

class HomePageSearchTextField extends StatelessWidget {
  const HomePageSearchTextField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        constraints: const BoxConstraints(
          minWidth: 368,
          maxHeight: 64,
        ),
        prefixIcon: const Icon(
          Icons.search,
          color: AppColors.textGrey,
        ),
        hintText: "Search anything",
        hintStyle: DefaultTextStyle.of(context).style.copyWith(
              fontSize: 14,
              color: AppColors.textGrey,
            ),
        filled: true,
        fillColor: AppColors.grey,
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(15),
        ),
      ),
    );
  }
}
