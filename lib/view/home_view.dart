import 'package:flutter/material.dart';
import 'package:responsive_app/widgets/custom_drawer.dart';
import 'package:responsive_app/widgets/home_view_body.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  GlobalKey<ScaffoldState> globalKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: globalKey,
      drawer: const CustomDrawer(),
      backgroundColor: const Color(0xffDBDBDB),
      appBar: MediaQuery.sizeOf(context).width - 32 < 900
          ? AppBar(
              backgroundColor: Colors.black,
              leading: IconButton(
                onPressed: () {
                  globalKey.currentState!.openDrawer();
                },
                icon: const Icon(
                  Icons.menu,
                  color: Colors.white,
                ),
              ),
            )
          : null,
      body: const HomeViewBody(),
    );
  }
}
