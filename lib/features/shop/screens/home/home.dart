import 'package:chimart/common/widgets/global/custom_shapes/containers/primary_header_container.dart';
import 'package:chimart/features/shop/screens/home/widgets/home_app_bar.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            CPrimaryHeaderContainer(
              child: Column(
                children: [CHomeAppBar()],
              ),
            )
          ],
        ),
      ),
    );
  }
}
