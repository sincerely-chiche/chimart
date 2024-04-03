import 'package:chimart/features/authentication/screens/signup/verify_email.dart';
import 'package:chimart/features/authentication/screens/signup/widgets/terms_and_condition_check_box.dart';
import 'package:chimart/utils/constants/sizes.dart';
import 'package:chimart/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class CSignUpForm extends StatelessWidget {
  const CSignUpForm({
    super.key,
    required this.isDark,
  });

  final bool isDark;

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: TextFormField(
                  expands: false,
                  decoration: const InputDecoration(
                    labelText: CTexts.firstName,
                    prefixIcon: Icon(
                      Iconsax.user,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                width: CSizes.spaceBtwInputFields,
              ),
              Expanded(
                child: TextFormField(
                  expands: false,
                  decoration: const InputDecoration(
                    labelText: CTexts.lastName,
                    prefixIcon: Icon(
                      Iconsax.user,
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: CSizes.spaceBtwInputFields,
          ),

          /// Username
          TextFormField(
            expands: false,
            decoration: const InputDecoration(
              labelText: CTexts.username,
              prefixIcon: Icon(
                Iconsax.user_edit,
              ),
            ),
          ),
          const SizedBox(
            height: CSizes.spaceBtwInputFields,
          ),

          /// Email
          TextFormField(
            expands: false,
            decoration: const InputDecoration(
              labelText: CTexts.email,
              prefixIcon: Icon(
                Iconsax.direct,
              ),
            ),
          ),
          const SizedBox(
            height: CSizes.spaceBtwInputFields,
          ),

          /// Email
          TextFormField(
            expands: false,
            decoration: const InputDecoration(
              labelText: CTexts.phoneNo,
              prefixIcon: Icon(
                Iconsax.call,
              ),
            ),
          ),
          const SizedBox(
            height: CSizes.spaceBtwInputFields,
          ),

          /// Email
          TextFormField(
            expands: false,
            decoration: const InputDecoration(
              labelText: CTexts.password,
              prefixIcon: Icon(
                Iconsax.password_check,
              ),
              suffixIcon: Icon(Iconsax.eye_slash),
            ),
          ),

          const SizedBox(
            height: CSizes.spaceBtwSections,
          ),

          const CTermsAndConditionCheckBox(),
          const SizedBox(
            height: CSizes.spaceBtwSections,
          ),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () => Get.to(
                () => const VerifyEmailScreen(),
              ),
              child: const Text(
                CTexts.createAccount,
              ),
            ),
          )
        ],
      ),
    );
  }
}
