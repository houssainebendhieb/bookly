import 'package:bookly/core/utils/style.dart';
import 'package:bookly/features/home/presentation/views/widgets/best_seller_list_view.dart';
import 'package:bookly/features/home/presentation/views/widgets/custom_navbar.dart';
import 'package:bookly/features/home/presentation/views/widgets/feature_list_item.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
            child: Padding(
          padding: EdgeInsets.zero,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomAppBar(),
              FeatureBooksListView(),
              SizedBox(
                height: 50,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: Text("Best Seller", style: Styles.textStyle18),
              ),
              SizedBox(
                height: 20,
              ),
              // BestSellerListView(),
            ],
          ),
        )),
        SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: BestSellerListView(),
          ),
        )
      ],
    );
  }
}
