import 'package:chimart/features/authentication/controllers.onboarding/onboarding_controller.dart';
import 'package:chimart/utils/constants/colors.dart';
import 'package:chimart/utils/constants/sizes.dart';
import 'package:chimart/utils/device/device_utility.dart';
import 'package:chimart/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingDotNavigation extends StatelessWidget {
  const OnBoardingDotNavigation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = OnBoardingController.instance;
    final isDark = CHelperFunctions.isDarkMode(context);

    return Positioned(
      bottom: CDeviceUtils.getBottomNavigationBarHeight() + 24,
      left: CSizes.defaultSpace,
      child: SmoothPageIndicator(
        controller: controller.pageController,
        count: 3,
        onDotClicked: controller.dotNavigationClick,
        effect: ExpandingDotsEffect(
            activeDotColor: isDark ? CColors.bgLight : CColors.bgDark,
            dotHeight: 6),
      ),
    );
  }
}
