import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:responsive_app/widgets/custom_list.dart';
import 'package:responsive_app/widgets/custom_list_view.dart';
import 'package:responsive_app/widgets/custom_sliver_grid.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: CustomScrollView(
        slivers: [
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 16,
            ),
          ),
          SliverToBoxAdapter(
            child: LayoutBuilder(builder: (context, constraints) {
              if (constraints.maxWidth > 600) {
                return const CustomList();
              } else {
                return const CustomSliverGrid();
              }
            }),
          ),
          const CustomSliverListView(),
        ],
      ),
    );
  }
}
