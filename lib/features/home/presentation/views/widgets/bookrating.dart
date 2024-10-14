import 'package:bookly/core/utils/style.dart';
import 'package:flutter/material.dart';

class BookRating extends StatelessWidget {
  final MainAxisAlignment mainAxisAlignment;
  const BookRating(
      {super.key,
      required this.mainAxisAlignment,
      required this.count,
      required this.rating});
  final int count;
  final int rating;
  Widget build(context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: [
        const Icon(Icons.star, color: Colors.yellow),
        const SizedBox(
          width: 6.3,
        ),
        Text("$rating", style: Styles.textStyle16),
        const SizedBox(
          width: 5,
        ),
        Opacity(opacity: 0.5, child: Text("$count", style: Styles.textStyle14)),
      ],
    );
  }
}
