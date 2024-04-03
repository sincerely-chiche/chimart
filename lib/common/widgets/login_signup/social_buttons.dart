// ignore_for_file: prefer_const_constructors

import 'package:chimart/utils/constants/colors.dart';
import 'package:chimart/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class CSocialButtons extends StatelessWidget {
  const CSocialButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(
            border: Border.all(color: CColors.grey),
            borderRadius: BorderRadius.circular(100),
          ),
          child: IconButton(
            onPressed: () {},
            icon: const Text(
              'G',
              style: TextStyle(
                color: CColors.error,
                fontWeight: FontWeight.bold,
                fontSize: CSizes.fontSizeXL,
              ),
            ),
          ),
        ),
        const SizedBox(
          width: CSizes.spaceBtwItems,
        ),
        Container(
          decoration: BoxDecoration(
            border: Border.all(color: CColors.grey),
            borderRadius: BorderRadius.circular(100),
          ),
          child: IconButton(
            onPressed: () {},
            icon: const Text(
              'F',
              style: TextStyle(
                color: CColors.primary,
                fontWeight: FontWeight.bold,
                fontSize: CSizes.fontSizeXL,
              ),
            ),
          ),
        )
      ],
    );
  }
}
