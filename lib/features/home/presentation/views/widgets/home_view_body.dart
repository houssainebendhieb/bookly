import 'package:bookly/core/utils/assets.dart';
import 'package:bookly/features/home/presentation/views/widgets/custom_navbar.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CustomAppBar(),
        CustomListViewItem(),
      ],
    );
  }
}

class CustomListViewItem extends StatelessWidget {
  const CustomListViewItem({super.key});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.3,
      child: AspectRatio(
        aspectRatio: 2.7 / 4,
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              color: Colors.orange,
              image: const DecorationImage(
                  fit: BoxFit.fill, image: AssetImage(AssetsData.logo))),
        ),
      ),
    );
  }
}
