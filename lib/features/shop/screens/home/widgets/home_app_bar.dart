import 'package:chimart/common/widgets/global/appbar/appbar.dart';
import 'package:chimart/common/widgets/global/products.cart/cart_menu_icon.dart';
import 'package:chimart/utils/constants/colors.dart';
import 'package:chimart/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';

class CHomeAppBar extends StatelessWidget {
  const CHomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CAppBar(
      showBackArrow: false,
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            CTexts.homeAppbarTitle,
            style: Theme.of(context)
                .textTheme
                .labelMedium!
                .apply(color: CColors.grey),
          ),
          Text(
            CTexts.homeAppbarSubTitle,
            style: Theme.of(context)
                .textTheme
                .headlineSmall!
                .apply(color: CColors.white),
          ),
        ],
      ),
      actions: [
        CCartCounterIcon(
          onPressed: () {},
        )
      ],
    );
  }
}
