import 'package:bookly/core/utils/style.dart';
import 'package:bookly/features/home/presentation/views/widgets/best_seller_item.dart';
import 'package:bookly/features/home/presentation/views/widgets/custom_navbar.dart';
import 'package:bookly/features/home/presentation/views/widgets/feature_list_item.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomAppBar(),
          FeatureBooksListView(),
          SizedBox(
            height: 50,
          ),
          Text("Best Seller", style: Styles.textStyle18),
          SizedBox(
            height: 20,
          ),
          BestSellerItemList(),
        ],
      ),
    );
  }
}
