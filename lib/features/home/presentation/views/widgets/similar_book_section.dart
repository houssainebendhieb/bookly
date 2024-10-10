import 'package:bookly/core/utils/style.dart';
import 'package:bookly/features/home/presentation/views/widgets/similar_book_list.dart';
import 'package:flutter/material.dart';

class SimilarBookSection extends StatelessWidget {
  const SimilarBookSection({super.key});

  Widget build(context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("you can also see ",
            style: Styles.textStyle18.copyWith(fontWeight: FontWeight.bold)),
        const SizedBox(
          height: 15,
        ),
        const SimilarBooksListView(),
        const SizedBox(
          height: 15,
        )
      ],
    );
  }
}
