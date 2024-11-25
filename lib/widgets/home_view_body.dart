import 'package:flutter/material.dart';
import 'package:responsive_app/widgets/adaptive_layout.dart';
import 'package:responsive_app/widgets/desktop_layuot.dart';

import 'package:responsive_app/widgets/mobile_layout.dart';
import 'package:responsive_app/widgets/tablet_layout.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: AdaptiveLayout(
        mobileLayout: (context) => const MobileLayout(),
        tabletLayout: (context) => const TabletLayout(),
        desktopLayout: (context) => const DesktopLayuot(),
      ),
    );
  }
}
