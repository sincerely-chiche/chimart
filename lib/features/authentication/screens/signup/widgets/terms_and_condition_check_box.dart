import 'package:chimart/utils/constants/colors.dart';
import 'package:chimart/utils/constants/sizes.dart';
import 'package:chimart/utils/constants/text_strings.dart';
import 'package:chimart/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class CTermsAndConditionCheckBox extends StatelessWidget {
  const CTermsAndConditionCheckBox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final isDark = CHelperFunctions.isDarkMode(context);
    return Row(
      children: [
        SizedBox(
          height: 24,
          width: 24,
          child: Checkbox(
            value: true,
            onChanged: (value) {},
          ),
        ),
        const SizedBox(
          width: CSizes.spaceBtwItems,
        ),
        Text.rich(
          softWrap: true,
          TextSpan(
            children: [
              TextSpan(
                  text: CTexts.iAgreeTo,
                  style: Theme.of(context).textTheme.bodySmall),
              TextSpan(
                text: CTexts.privacyPolicy,
                style: Theme.of(context).textTheme.bodyMedium!.apply(
                      color: isDark ? CColors.white : CColors.primary,
                      decoration: TextDecoration.underline,
                      decorationColor: isDark ? CColors.white : CColors.primary,
                    ),
              ),
              TextSpan(
                  text: ' and ', style: Theme.of(context).textTheme.bodySmall),
              TextSpan(
                text: CTexts.termsOfUse,
                style: Theme.of(context).textTheme.bodyMedium!.apply(
                      color: isDark ? CColors.white : CColors.primary,
                      decoration: TextDecoration.underline,
                      decorationColor: isDark ? CColors.white : CColors.primary,
                    ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
