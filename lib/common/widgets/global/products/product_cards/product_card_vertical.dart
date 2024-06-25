import 'package:chimart/common/styles/shadows.dart';
import 'package:chimart/common/widgets/global/custom_shapes/containers/rounded_container.dart';
import 'package:chimart/common/widgets/global/icons/circular_icon.dart';
import 'package:chimart/common/widgets/global/images/rounded_image.dart';
import 'package:chimart/common/widgets/global/text/product_price_text.dart';
import 'package:chimart/common/widgets/global/text/product_title_text.dart';
import 'package:chimart/utils/constants/colors.dart';
import 'package:chimart/utils/constants/image_strings.dart';
import 'package:chimart/utils/constants/sizes.dart';
import 'package:chimart/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class CProductCardVertical extends StatelessWidget {
  const CProductCardVertical({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = CHelperFunctions.isDarkMode(context);
    return GestureDetector(
      onTap: () {},
      child: Container(
        width: 180,
        padding: const EdgeInsets.all(1),
        decoration: BoxDecoration(
          boxShadow: [CShadowStyle.verticalProductShadow],
          borderRadius: BorderRadius.circular(CSizes.productImageRadius),
          color: isDark ? CColors.darkerGrey : CColors.white,
        ),
        child: Column(
          children: [
            CRoundedContainer(
              height: 201,
              backgroundColor: isDark ? CColors.bgDark : CColors.bgLight,
              child: Stack(
                children: [
                  const CRoundedImage(
                    imageUrl: CImages.product,
                    isNetworkImage: true,
                    applyImageRadius: true,
                  ),
                  Positioned(
                    top: 12,
                    left: 12,
                    child: CRoundedContainer(
                      radius: CSizes.sm,
                      backgroundColor: CColors.secondary.withOpacity(.8),
                      padding: const EdgeInsets.symmetric(
                        horizontal: CSizes.sm,
                        vertical: CSizes.xs,
                      ),
                      child: Text(
                        '25%',
                        style: Theme.of(context).textTheme.labelLarge!.apply(
                              color: CColors.black,
                            ),
                      ),
                    ),
                  ),
                  const Positioned(
                    right: 10,
                    top: 10,
                    child: CCircularIcon(
                      icon: Iconsax.heart5,
                      color: Colors.red,
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: CSizes.spaceBtwItems / 2,
            ),
            Padding(
              padding: const EdgeInsets.only(left: CSizes.sm),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const CProductTitleText(
                    title: 'Green Nike Air Shoes',
                    smallSize: true,
                  ),
                  const SizedBox(
                    height: CSizes.spaceBtwItems / 2,
                  ),
                  Row(
                    children: [
                      Text(
                        'Nike',
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                        style: Theme.of(context).textTheme.labelMedium,
                      ),
                      const SizedBox(
                        width: CSizes.xs,
                      ),
                      const Icon(
                        Iconsax.verify5,
                        color: CColors.primary,
                        size: CSizes.iconXs,
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const CProductPriceText(
                        price: '40.50',
                      ),
                      Container(
                        decoration: const BoxDecoration(
                          color: CColors.bgDark,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(CSizes.cardRadiusMd),
                            bottomRight:
                                Radius.circular(CSizes.productImageRadius),
                          ),
                        ),
                        child: const SizedBox(
                          height: CSizes.iconLg * 1.2,
                          width: CSizes.iconLg * 1.2,
                          child: Icon(
                            Iconsax.add,
                            color: CColors.white,
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
