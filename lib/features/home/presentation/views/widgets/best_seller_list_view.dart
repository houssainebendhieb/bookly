import 'package:bookly/features/home/presentation/views/widgets/best_seller_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../manager/newset books cubit/newset_books_cubit.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});
  Widget build(context) {
    return BlocBuilder<NewsetBooksCubit, NewsetBooksState>(
      builder: (context, state) {
        if (state is NewsetBooksSuccess) {
          return ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: 10,
              itemBuilder: (context, index) {
                return  Padding(
                  padding:const  EdgeInsets.symmetric(vertical: 10),
                  child: BestSellerItemList(bookModel: state.listBooks[index]),
                );
              });
        } else if (state is NewsetBooksFailure) {
          return Text(state.errMessage);
        } else {
          return const  Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    );
  }
}
