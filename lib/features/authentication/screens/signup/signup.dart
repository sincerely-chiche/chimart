import 'package:chimart/common/widgets/login_signup/form_divider.dart';
import 'package:chimart/common/widgets/login_signup/social_buttons.dart';
import 'package:chimart/features/authentication/screens/signup/widgets/sign_up_form.dart';
import 'package:chimart/utils/constants/sizes.dart';
import 'package:chimart/utils/constants/text_strings.dart';
import 'package:chimart/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = CHelperFunctions.isDarkMode(context);

    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(
            CSizes.defaultSpace,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /// TItle
              Text(
                CTexts.signUpTitle,
                style: Theme.of(context).textTheme.headlineMedium,
              ),

              const SizedBox(
                height: CSizes.spaceBtwSections,
              ),

              /// Form
              CSignUpForm(isDark: isDark),

              const SizedBox(
                height: CSizes.spaceBtwItems,
              ),

              const CFormDivider(dividerText: CTexts.orSignUpWith),
              const SizedBox(
                height: CSizes.spaceBtwItems,
              ),

              /// Social Buttons
              const CSocialButtons()
            ],
          ),
        ),
      ),
    );
  }
}
