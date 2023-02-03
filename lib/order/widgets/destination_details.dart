import 'package:flutter/material.dart';

import '../../color/app_colors.dart';

class OrderPageDestinationDetails extends StatelessWidget {
  const OrderPageDestinationDetails({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 35),
      decoration: BoxDecoration(
        border: Border.all(),
        borderRadius: BorderRadius.circular(30),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Icon(
                Icons.location_on_outlined,
                color: AppColors.orange,
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Hotel Diamond Palace",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text(
                        "394K, Central Park, New Delhi, India",
                        style: Theme.of(context).textTheme.bodySmall,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 40,
                width: 40,
                child: TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: AppColors.lightOrange,
                    iconColor: AppColors.orange,
                  ),
                  onPressed: () {},
                  child: const Icon(
                    Icons.edit,
                  ),
                ),
              )
            ],
          ),
          const SizedBox(height: 34),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Icon(
                Icons.flag_circle,
                color: AppColors.orange,
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Middle road Sediago",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text(
                        "201, sector 25, Centre Park, New Delhi, India",
                        style: Theme.of(context).textTheme.bodySmall,
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(width: 40)
            ],
          ),
        ],
      ),
    );
  }
}
