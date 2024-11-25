import 'package:flutter/material.dart';
import 'package:responsive_app/widgets/custom_item.dart';
import 'package:responsive_app/widgets/custom_item2.dart';

class CustomDesktopItem extends StatelessWidget {
  const CustomDesktopItem({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Expanded(
          child: CustomItem(),
        ),
        Expanded(
          child: CustomItem2(),
        ),
      ],
    );
  }
}
