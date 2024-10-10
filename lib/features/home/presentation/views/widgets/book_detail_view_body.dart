import 'package:bookly/core/utils/style.dart';
import 'package:bookly/features/home/presentation/views/widgets/book_action.dart';
import 'package:bookly/features/home/presentation/views/widgets/bookrating.dart';
import 'package:bookly/features/home/presentation/views/widgets/custom_appbar_book_detail.dart';
import 'package:bookly/features/home/presentation/views/widgets/custom_item_list.dart';
import 'package:bookly/features/home/presentation/views/widgets/similar_book_list.dart';
import 'package:flutter/material.dart';

class BookDetailViewBody extends StatelessWidget {
  const BookDetailViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        children: [
          const CustomAppBarBookDetail(),
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.width * 0.15),
            child: const CustomListViewItem(),
          ),
          const SizedBox(
            height: 43,
          ),
          Text("The jungle Book",
              style:
                  Styles.textStyle30.copyWith(fontWeight: FontWeight.normal)),
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
          const BookAction(),
          const SizedBox(
            height: 30,
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Text("you can also see ",
                style:
                    Styles.textStyle18.copyWith(fontWeight: FontWeight.bold)),
          ),
          const SizedBox(
            height: 15,
          ),
          const SimilarBooksListView(),
          const SizedBox(
            height: 15,
          )
        ],
      ),
    );
  }
}
