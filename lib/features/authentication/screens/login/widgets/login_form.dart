// ignore_for_file: prefer_const_constructors

import 'package:chimart/features/authentication/screens/password_configuration/forget_password.dart';
import 'package:chimart/features/authentication/screens/signup/signup.dart';
import 'package:chimart/navigation_menu.dart';
import 'package:chimart/utils/constants/sizes.dart';
import 'package:chimart/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class CLoginForm extends StatelessWidget {
  const CLoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: CSizes.spaceBtwSections),
        child: Column(
          children: [
            TextFormField(
              decoration: const InputDecoration(
                prefixIcon: Icon(Iconsax.direct_right),
                labelText: CTexts.email,
              ),
            ),
            const SizedBox(
              height: CSizes.spaceBtwInputFields,
            ),
            TextFormField(
              decoration: const InputDecoration(
                prefixIcon: Icon(Iconsax.password_check),
                labelText: CTexts.password,
                suffixIcon: Icon(Iconsax.eye_slash),
              ),
            ),
            const SizedBox(
              height: CSizes.spaceBtwInputFields / 2,
            ),

            /// Remember Me & Forgot password
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Checkbox(value: true, onChanged: (value) {}),
                    const Text(CTexts.rememberMe)
                  ],
                ),

                /// Forget Password
                TextButton(
                  onPressed: () => Get.to(() => ForgetPasswordScreen()),
                  child: const Text(CTexts.forgetPassword),
                ),
              ],
            ),

            const SizedBox(
              height: CSizes.spaceBtwSections,
            ),

            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () => Get.to(() => NavigationMenu()),
                child: const Text(CTexts.signIn),
              ),
            ),
            const SizedBox(
              height: CSizes.spaceBtwItems,
            ),

            SizedBox(
              width: double.infinity,
              child: OutlinedButton(
                onPressed: () => Get.to(() => SignUpScreen()),
                child: const Text(CTexts.createAccount),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
