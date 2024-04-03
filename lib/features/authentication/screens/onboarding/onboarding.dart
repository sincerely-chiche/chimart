import 'package:chimart/features/authentication/controllers.onboarding/onboarding_controller.dart';
import 'package:chimart/features/authentication/screens/onboarding/widgets/on_boarding_dot_navigation.dart';
import 'package:chimart/features/authentication/screens/onboarding/widgets/on_boarding_next_button.dart';
import 'package:chimart/features/authentication/screens/onboarding/widgets/on_boarding_page.dart';
import 'package:chimart/features/authentication/screens/onboarding/widgets/on_boarding_skip.dart';
import 'package:chimart/utils/constants/image_strings.dart';
import 'package:chimart/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnBoardingController());

    return Scaffold(
      body: Stack(
        children: [
          /// Horizontal Scrollable Pages
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            children: const [
              OnBoardingPage(
                image: CImages.onBoardingImage1,
                title: CTexts.onBoardingTitle1,
                subTitle: CTexts.onBoardingSubTitle1,
              ),
              OnBoardingPage(
                image: CImages.onBoardingImage2,
                title: CTexts.onBoardingTitle2,
                subTitle: CTexts.onBoardingSubTitle2,
              ),
              OnBoardingPage(
                image: CImages.onBoardingImage3,
                title: CTexts.onBoardingTitle3,
                subTitle: CTexts.onBoardingSubTitle3,
              ),
            ],
          ),

          /// Skip Button
          const OnBoardingSkip(),

          /// Dot Navigation SmoothPageIndicator
          const OnBoardingDotNavigation(),

          ///Circular Button
          const OnBoardingNextButton()
        ],
      ),
    );
  }
}
