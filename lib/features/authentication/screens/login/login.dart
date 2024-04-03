// ignore_for_file: prefer_const_constructors

import 'package:chimart/common/styles/spacing_styles.dart';
import 'package:chimart/common/widgets/login_signup/form_divider.dart';
import 'package:chimart/common/widgets/login_signup/social_buttons.dart';
import 'package:chimart/features/authentication/screens/login/widgets/login_form.dart';
import 'package:chimart/features/authentication/screens/login/widgets/login_header.dart';
import 'package:chimart/utils/constants/sizes.dart';
import 'package:chimart/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: CSpacingStyles.paddingWithAppBarHeight,
          child: Column(
            children: [
              /// Logo, Title & Sub-Title
              CLoginHeader(),

              /// Form
              CLoginForm(),

              /// Form Divider
              CFormDivider(dividerText: CTexts.orSignInWith.capitalize!),
              const SizedBox(
                height: CSizes.spaceBtwSections,
              ),

              /// Social buttons
              CSocialButtons()
            ],
          ),
        ),
      ),
    );
  }
}
