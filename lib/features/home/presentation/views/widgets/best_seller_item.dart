import 'package:bookly/core/utils/app_router.dart';
import 'package:bookly/core/utils/style.dart';
import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:bookly/features/home/presentation/views/widgets/bookrating.dart';
import 'package:bookly/features/home/presentation/views/widgets/custom_item_list.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BestSellerItemList extends StatelessWidget {
  const BestSellerItemList({super.key, required this.bookModel});
  final BookModel bookModel;
  Widget build(context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(AppRouter.kBookDetailView);
      },
      child: SizedBox(
        height: 125,
        child: Row(
          children: [
            CustomListViewItem(
                imageUrl: bookModel.volumeInfo.imageLinks?.thumbnail ?? " "),
            const SizedBox(
              width: 30,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                      width: MediaQuery.of(context).size.width * 0.5,
                      child: Text(bookModel.volumeInfo.title!,
                          overflow: TextOverflow.ellipsis,
                          maxLines: 2,
                          style: Styles.textStyle20)),
                  const SizedBox(
                    height: 3,
                  ),
                  Text(bookModel.volumeInfo.authors![0],
                      style: Styles.textStyle14),
                  Expanded(
                    child: Row(
                      children: [
                        Text("FREE",
                            style: Styles.textStyle20
                                .copyWith(fontWeight: FontWeight.bold)),
                        const Spacer(),
                        const BookRating(
                            mainAxisAlignment: MainAxisAlignment.start,
                            rating: 4,
                            count: 2541),
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
