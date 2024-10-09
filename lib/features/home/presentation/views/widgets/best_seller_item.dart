import 'package:bookly/core/utils/assets.dart';
import 'package:flutter/material.dart';
class BestSellerItemList extends StatelessWidget {
  const BestSellerItemList({super.key});
  Widget build(context) {
    return SizedBox(
      height: 125,
      child: Row(
        children: [
          AspectRatio(
            aspectRatio: 2.7 / 4,
            child: Container(
              decoration: const  BoxDecoration(
                  color: Colors.red,
                  image: DecorationImage(
                      fit: BoxFit.fill, image: AssetImage(AssetsData.logo))),
            ),
          ),
        ],
      ),
    );
  }
}
