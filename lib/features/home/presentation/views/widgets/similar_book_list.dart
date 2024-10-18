import 'package:bookly/features/home/presentation/manager/similar_books%20cubit/similar_books_cubit.dart';
import 'package:bookly/features/home/presentation/views/widgets/custom_item_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SimilarBooksListView extends StatelessWidget {
  const SimilarBooksListView({super.key});

  Widget build(context) {
    return BlocBuilder<SimilarBooksCubit, SimilarBooksState>(
      builder: (context, state) {
        if (state is SimilarBooksSucces) {
          return SizedBox(
              height: MediaQuery.of(context).size.height * 0.15,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: CustomListViewItem(imageUrl: "fjdk"),
                    );
                  }));
        } else if (state is SimilarBooksFailure) {
          return Center(
            child: Text(state.errMessage),
          );
        } else {
          return const  Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    );
  }
}
