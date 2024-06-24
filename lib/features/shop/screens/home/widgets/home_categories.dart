import 'package:chimart/common/widgets/global/image_text_widgets/vertical_image_text.dart';
import 'package:chimart/utils/constants/image_strings.dart';
import 'package:flutter/material.dart';

class CHomeCategories extends StatelessWidget {
  const CHomeCategories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: 6,
        scrollDirection: Axis.horizontal,
        itemBuilder: (_, index) {
          return CVerticalImageText(
            image: CImages.shoesIcon,
            title: 'Shoes',
            onTap: () {},
          );
        },
      ),
    );
  }
}
