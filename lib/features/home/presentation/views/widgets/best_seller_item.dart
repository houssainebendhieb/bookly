import 'package:bookly/core/utils/assets.dart';
import 'package:bookly/core/utils/style.dart';
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
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.red,
                  image: const DecorationImage(
                      fit: BoxFit.fill, image: AssetImage(AssetsData.logo))),
            ),
          ),
          const SizedBox(
            width: 30,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                    width: MediaQuery.of(context).size.width * 0.5,
                    child: const Text("Harry Potter and the Goblet of Fire ",
                        overflow: TextOverflow.ellipsis,
                        maxLines: 2,
                        style: Styles.textStyle20)),
                const SizedBox(
                  height: 3,
                ),
                const Text('J.K. Rowling ', style: Styles.textStyle14),
                Expanded(
                  child: Row(
                    children: [
                      Text("19.99 \$",
                          style: Styles.textStyle20
                              .copyWith(fontWeight: FontWeight.bold)),
                      const Spacer(),
                      BookRating(),
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class BookRating extends StatelessWidget {
  const BookRating({super.key});
  Widget build(context) {
    return const Row(
      children: [
        Icon(Icons.star, color: Colors.yellow),
        SizedBox(
          width: 6.3,
        ),
        Text("4.8", style: Styles.textStyle16),
        SizedBox(
          width: 5,
        ),
        Text("(2541)", style: Styles.textStyle14),
      ],
    );
  }
}
