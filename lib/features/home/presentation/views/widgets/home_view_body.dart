import 'package:bookly/core/utils/style.dart';
import 'package:bookly/features/home/presentation/views/widgets/custom_navbar.dart';
import 'package:bookly/features/home/presentation/views/widgets/feature_list_item.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CustomAppBar(),
        FeatureBooksListView(),
        const SizedBox(
          height: 50,
        ),
        Text("best seller ", style: Styles.titleMeduim),
      ],
    );
  }
}
