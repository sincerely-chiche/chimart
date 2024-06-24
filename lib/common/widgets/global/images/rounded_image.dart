import 'package:chimart/utils/constants/colors.dart';
import 'package:chimart/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class CRoundedImage extends StatelessWidget {
  const CRoundedImage({
    super.key,
    required this.imageUrl,
    this.border,
    this.padding,
    this.onPressed,
    this.width,
    this.height,
    this.applyImageRadius = true,
    this.backgroundColor = CColors.bgLight,
    this.fit = BoxFit.cover,
    this.isNetworkImage = false,
    this.borderRadius = CSizes.md,
    this.margin,
  });

  final double? width, height;
  final String imageUrl;
  final bool applyImageRadius;
  final BoxBorder? border;
  final Color backgroundColor;
  final BoxFit? fit;
  final EdgeInsetsGeometry? padding;
  final bool isNetworkImage;
  final VoidCallback? onPressed;
  final double borderRadius;
  final EdgeInsets? margin;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        height: height,
        margin: margin,
        width: width ?? MediaQuery.of(context).size.width,
        padding: padding,
        decoration: BoxDecoration(
          border: border,
          color: backgroundColor,
          borderRadius: BorderRadius.circular(borderRadius),
        ),
        child: ClipRRect(
          borderRadius: applyImageRadius
              ? BorderRadius.circular(borderRadius)
              : BorderRadius.zero,
          child: Image(
            image: isNetworkImage
                ? NetworkImage(imageUrl)
                : AssetImage(imageUrl) as ImageProvider,
            fit: fit,
          ),
        ),
      ),
    );
  }
}
