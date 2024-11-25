import 'package:flutter/material.dart';
import 'package:responsive_app/widgets/custom_desktop_item.dart';
import 'package:responsive_app/widgets/custom_drawer.dart';
import 'package:responsive_app/widgets/tablet_layout.dart';

class DesktopLayuot extends StatelessWidget {
  const DesktopLayuot({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
          child: CustomDrawer(),
        ),
        Expanded(
          flex: 3,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: TabletLayout(),
          ),
        ),
        Expanded(
          child: CustomDesktopItem(),
        ),
      ],
    );
  }
}
