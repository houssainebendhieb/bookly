import 'package:bookly/features/home/presentation/views/widgets/book_action.dart';
import 'package:bookly/features/home/presentation/views/widgets/book_description_section.dart';
import 'package:bookly/features/home/presentation/views/widgets/custom_appbar_book_detail.dart';
import 'package:bookly/features/home/presentation/views/widgets/similar_book_section.dart';
import 'package:flutter/material.dart';

class BookDetailViewBody extends StatelessWidget {
  const BookDetailViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverFillRemaining(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              children: [
                CustomAppBarBookDetail(),
                BookDescriptionSection(),
                BookAction(),
                Expanded(
                  child: SizedBox(
                    height: 50,
                  ),
                ),
                SimilarBookSection(),
              ],
            ),
          ),
        )
      ],
    );
  }
}
