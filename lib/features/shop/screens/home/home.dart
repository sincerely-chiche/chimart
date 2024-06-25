import 'package:chimart/common/widgets/global/custom_shapes/containers/primary_header_container.dart';
import 'package:chimart/common/widgets/global/custom_shapes/containers/search_container.dart';
import 'package:chimart/common/widgets/global/layouts/grid_layout.dart';
import 'package:chimart/common/widgets/global/products/product_cards/product_card_vertical.dart';
import 'package:chimart/common/widgets/global/text/section_heading.dart';
import 'package:chimart/features/shop/screens/home/widgets/home_app_bar.dart';
import 'package:chimart/features/shop/screens/home/widgets/home_categories.dart';
import 'package:chimart/features/shop/screens/home/widgets/promo_slider.dart';
import 'package:chimart/utils/constants/image_strings.dart';
import 'package:chimart/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const CPrimaryHeaderContainer(
              child: Column(
                children: [
                  CHomeAppBar(),
                  SizedBox(
                    height: CSizes.spaceBtwSections,
                  ),

                  /// SearchBar
                  CSearchContainer(
                    text: 'Search in store',
                    showBackground: true,
                    showBorder: true,
                    icon: Iconsax.search_normal,
                  ),
                  SizedBox(
                    height: CSizes.spaceBtwSections,
                  ),

                  /// Categories
                  Padding(
                    padding: EdgeInsets.only(left: CSizes.defaultSpace),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CSectionHeading(
                          title: 'Popular Categories',
                          showActionButton: false,
                          textColor: Colors.white,
                        ),
                        SizedBox(
                          height: CSizes.spaceBtwItems,
                        ),

                        /// Categories
                        CHomeCategories()
                      ],
                    ),
                  )
                ],
              ),
            ),

            /// Body -- Section

            Padding(
              padding: const EdgeInsets.all(CSizes.defaultSpace),
              child: Column(
                children: [
                  CPromoSlider(
                    banners: const [
                      CImages.promoBanner1,
                      CImages.promoBanner2,
                      CImages.promoBanner3
                    ],
                  ),
                  const SizedBox(
                    height: CSizes.spaceBtwSections,
                  ),
                  CGridLayout(
                    itemCount: 8,
                    itemBuilder: (_, index) => const CProductCardVertical(),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
