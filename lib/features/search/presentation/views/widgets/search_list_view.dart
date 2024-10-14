import 'package:bookly/features/home/presentation/views/widgets/best_seller_item.dart';
import 'package:flutter/material.dart';

class SearchResultListView extends StatelessWidget {
  const SearchResultListView({super.key});
  Widget build(context) {
    return ListView.builder(
        shrinkWrap: true,
        //physics: const NeverScrollableScrollPhysics(),
        itemCount: 10,
        itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: Text(""),
            //child: BestSellerItemList(),
          );
        });
  }
}
