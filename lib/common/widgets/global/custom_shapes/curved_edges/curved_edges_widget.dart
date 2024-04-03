import 'package:chimart/common/widgets/global/custom_shapes/curved_edges/curved_edges.dart';
import 'package:chimart/utils/constants/colors.dart';
import 'package:flutter/material.dart';

class CCurvedEdgeWidget extends StatelessWidget {
  const CCurvedEdgeWidget({
    super.key,
    this.child,
  });

  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: CCustomCurvedEdges(),
      child: Container(
        color: CColors.primary,
        padding: EdgeInsets.all(0),
        child: child,
      ),
    );
  }
}
