import 'package:bookly/core/utils/style.dart';
import 'package:bookly/features/home/presentation/views/widgets/bookrating.dart';
import 'package:bookly/features/home/presentation/views/widgets/custom_item_list.dart';
import 'package:flutter/material.dart';

class BookDescriptionSection extends StatelessWidget {
  const BookDescriptionSection({super.key});

  Widget build(context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width * 0.15),
          child: const CustomListViewItem(imageUrl: "fjskl"),
        ),
        const SizedBox(
          height: 43,
        ),
        Text("The jungle Book",
            style: Styles.textStyle30.copyWith(fontWeight: FontWeight.normal)),
        const SizedBox(
          height: 3,
        ),
        Opacity(
          opacity: 0.7,
          child: Text("harry potter book",
              style: Styles.textStyle18.copyWith(
                  fontStyle: FontStyle.italic, fontWeight: FontWeight.w500)),
        ),
        const SizedBox(
          height: 18,
        ),
        const BookRating(
          mainAxisAlignment: MainAxisAlignment.center,
        ),
      ],
    );
  }
}
