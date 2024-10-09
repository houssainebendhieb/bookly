import 'package:bookly/core/utils/style.dart';
import 'package:flutter/material.dart';

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
