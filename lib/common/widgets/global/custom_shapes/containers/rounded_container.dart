import 'package:chimart/utils/constants/colors.dart';
import 'package:chimart/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class CRoundedContainer extends StatelessWidget {
  const CRoundedContainer({
    super.key,
    this.width,
    this.height,
    this.child,
    this.margin,
    this.padding,
    this.showBorder = false,
    this.radius = CSizes.cardRadiusLg,
    this.backgroundColor = CColors.white,
    this.borderColor = CColors.borderPrimary,
  });

  final double? width;
  final double? height;
  final double radius;
  final bool showBorder;
  final EdgeInsets? margin;
  final EdgeInsets? padding;
  final Widget? child;
  final Color backgroundColor;
  final Color borderColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      margin: margin,
      padding: padding,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radius),
        color: backgroundColor,
        border: showBorder ? Border.all(color: borderColor) : null,
      ),
      child: child,
    );
  }
}
