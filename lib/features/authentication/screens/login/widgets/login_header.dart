// ignore_for_file: prefer_const_constructors

import 'package:chimart/utils/constants/image_strings.dart';
import 'package:chimart/utils/constants/sizes.dart';
import 'package:chimart/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';

class CLoginHeader extends StatelessWidget {
  const CLoginHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Image(
          height: 150,
          image: AssetImage(CImages.darkAppLogo),
        ),
        const SizedBox(height: CSizes.spaceBtwItems),
        Text(
          CTexts.loginTitle,
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        const SizedBox(
          height: CSizes.sm,
        ),
        Text(
          CTexts.loginSubTitle,
          style: Theme.of(context).textTheme.bodyMedium,
        ),
      ],
    );
  }
}
