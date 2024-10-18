import 'package:bookly/core/utils/style.dart';
import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:bookly/features/home/presentation/views/widgets/bookrating.dart';
import 'package:bookly/features/home/presentation/views/widgets/custom_item_list.dart';
import 'package:flutter/material.dart';

class BookDescriptionSection extends StatelessWidget {
  const BookDescriptionSection({super.key, required this.bookModel});
  final BookModel bookModel;
  Widget build(context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width * 0.15),
          child: CustomListViewItem(
              imageUrl: bookModel.volumeInfo.imageLinks!.thumbnail),
        ),
        const SizedBox(
          height: 43,
        ),
        Text(bookModel.volumeInfo.title!,
            style: Styles.textStyle30.copyWith(fontWeight: FontWeight.normal)),
        const SizedBox(
          height: 3,
        ),
        Opacity(
          opacity: 0.7,
          child: Text(bookModel.volumeInfo.authors![0],
              style: Styles.textStyle18.copyWith(
                  fontStyle: FontStyle.italic, fontWeight: FontWeight.w500)),
        ),
        const SizedBox(
          height: 18,
        ),
        const BookRating(
          rating: 4,
          count: 5,
          mainAxisAlignment: MainAxisAlignment.center,
        ),
      ],
    );
  }
}
