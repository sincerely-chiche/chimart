import 'package:chimart/utils/constants/colors.dart';
import 'package:chimart/utils/constants/sizes.dart';
import 'package:chimart/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class CVerticalImageText extends StatelessWidget {
  const CVerticalImageText({
    super.key,
    required this.image,
    required this.title,
    this.textColor = CColors.white,
    this.backgroundColor = CColors.white,
    this.onTap,
  });

  final String image, title;
  final Color textColor;
  final Color? backgroundColor;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(right: CSizes.spaceBtwItems),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 56,
              height: 56,
              padding: const EdgeInsets.all(CSizes.sm),
              decoration: BoxDecoration(
                color: backgroundColor ??
                    (CHelperFunctions.isDarkMode(context)
                        ? CColors.black
                        : CColors.white),
                borderRadius: BorderRadius.circular(100),
              ),
              child: Center(
                child: Image(
                  image: AssetImage(image),
                  fit: BoxFit.cover,
                  color: CHelperFunctions.isDarkMode(context)
                      ? CColors.bgLight
                      : CColors.bgDark,
                ),
              ),
            ),
            const SizedBox(
              height: CSizes.spaceBtwItems / 2,
            ),
            SizedBox(
              width: 55,
              child: Text(
                textAlign: TextAlign.center,
                title,
                style: Theme.of(context)
                    .textTheme
                    .labelMedium!
                    .apply(color: textColor),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            )
          ],
        ),
      ),
    );
  }
}
