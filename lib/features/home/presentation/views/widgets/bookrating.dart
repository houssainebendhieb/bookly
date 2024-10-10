import 'package:bookly/core/utils/style.dart';
import 'package:flutter/material.dart';

class BookRating extends StatelessWidget {
  final MainAxisAlignment mainAxisAlignment;
  const BookRating({super.key, required this.mainAxisAlignment});
  Widget build(context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: const [
        Icon(Icons.star, color: Colors.yellow),
        SizedBox(
          width: 6.3,
        ),
        Text("4.8", style: Styles.textStyle16),
        SizedBox(
          width: 5,
        ),
        Opacity(opacity: 0.5, child: Text("(2541)", style: Styles.textStyle14)),
      ],
    );
  }
}
