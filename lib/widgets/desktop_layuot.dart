import 'package:flutter/material.dart';
import 'package:responsive_app/widgets/custom_drawer.dart';
import 'package:responsive_app/widgets/tablet_layout.dart';

class DesktopLayuot extends StatelessWidget {
  const DesktopLayuot({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        CustomDrawer(),
        Expanded(
          child: TabletLayout(),
        ),
      ],
    );
  }
}
