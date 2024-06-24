import 'package:chimart/utils/constants/colors.dart';
import 'package:chimart/utils/constants/sizes.dart';
import 'package:chimart/utils/device/device_utility.dart';
import 'package:chimart/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class CSearchContainer extends StatelessWidget {
  const CSearchContainer({
    super.key,
    required this.text,
    this.icon,
    this.showBackground = true,
    this.showBorder = true,
  });

  final String text;
  final IconData? icon;
  final bool showBackground, showBorder;

  @override
  Widget build(BuildContext context) {
    final isDark = CHelperFunctions.isDarkMode(context);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: CSizes.defaultSpace),
      child: Container(
        width: CDeviceUtils.getScreenWidth(),
        padding: const EdgeInsets.all(CSizes.md),
        decoration: BoxDecoration(
          color: showBackground
              ? isDark
                  ? CColors.bgDark
                  : CColors.bgLight
              : Colors.transparent,
          borderRadius: BorderRadius.circular(CSizes.cardRadiusLg),
          border: showBorder ? Border.all(color: CColors.grey) : null,
        ),
        child: Row(
          children: [
            Icon(
              icon,
              color: CColors.darkerGrey,
            ),
            const SizedBox(
              width: CSizes.spaceBtwItems,
            ),
            Text(
              text,
              style: Theme.of(context).textTheme.bodySmall,
            )
          ],
        ),
      ),
    );
  }
}
