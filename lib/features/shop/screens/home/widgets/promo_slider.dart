import 'package:carousel_slider/carousel_slider.dart';
import 'package:chimart/common/widgets/global/custom_shapes/containers/circular_container.dart';
import 'package:chimart/common/widgets/global/images/rounded_image.dart';
import 'package:chimart/features/shop/controllers/home_controllers.dart';
import 'package:chimart/utils/constants/colors.dart';
import 'package:chimart/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CPromoSlider extends StatelessWidget {
  CPromoSlider({
    super.key,
    required this.banners,
  });

  final List<String> banners;

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HomeController());

    return Column(
      children: [
        CarouselSlider(
          items: banners.map((url) => CRoundedImage(imageUrl: url)).toList(),
          options: CarouselOptions(
            viewportFraction: 1,
            onPageChanged: (index, _) => controller.updatePageIndicator(index),
          ),
        ),
        const SizedBox(
          height: CSizes.spaceBtwItems,
        ),
        Center(
          child: Obx(
            () => Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                for (int i = 0; i < banners.length; i++)
                  CCircularContainer(
                    width: 20,
                    height: 4,
                    margin: const EdgeInsets.only(right: 10),
                    backgroundColor: controller.carouselCurrentIndex.value == i
                        ? CColors.primary
                        : Colors.grey,
                  ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
