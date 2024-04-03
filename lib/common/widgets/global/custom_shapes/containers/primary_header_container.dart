import 'package:chimart/common/widgets/global/custom_shapes/containers/circular_container.dart';
import 'package:chimart/common/widgets/global/custom_shapes/curved_edges/curved_edges_widget.dart';
import 'package:chimart/utils/constants/colors.dart';
import 'package:flutter/material.dart';

class CPrimaryHeaderContainer extends StatelessWidget {
  const CPrimaryHeaderContainer({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return CCurvedEdgeWidget(
      child: SizedBox(
        height: 400,
        child: Stack(
          children: [
            Positioned(
              top: -150,
              right: -250,
              child: CCircularContainer(
                backgroundColor: CColors.textWhite.withOpacity(.1),
              ),
            ),
            Positioned(
              top: 100,
              right: -300,
              child: CCircularContainer(
                backgroundColor: CColors.textWhite.withOpacity(.1),
              ),
            ),
            child
          ],
        ),
      ),
    );
  }
}
