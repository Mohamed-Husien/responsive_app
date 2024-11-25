import 'package:flutter/material.dart';
import 'package:responsive_app/widgets/adaptive_layout.dart';
import 'package:responsive_app/widgets/desktop_layuot.dart';

import 'package:responsive_app/widgets/mobile_layout.dart';
import 'package:responsive_app/widgets/tablet_layout.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: AdaptiveLayout(
        mobileLayout: MobileLayout(),
        tabletLayout: TabletLayout(),
        desktopLayout: DesktopLayuot(),
      ),
    );
  }
}
