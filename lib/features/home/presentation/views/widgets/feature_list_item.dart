import 'package:bookly/core/utils/app_router.dart';
import 'package:bookly/features/home/presentation/manager/feature%20books%20cubit/feature_books_cubit.dart';
import 'package:bookly/features/home/presentation/views/widgets/custom_item_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class FeatureBooksListView extends StatelessWidget {
  const FeatureBooksListView({super.key});
  Widget build(context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.3,
      child: BlocBuilder<FeatureBooksCubit, FeatureBooksState>(
        builder: (context, state) {
          if (state is FeatureBooksSuccess) {
            return ListView.builder(
                physics: const BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                itemCount: state.listBook.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      GoRouter.of(context).push(AppRouter.kBookDetailView,
                          extra: state.listBook[index]);
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CustomListViewItem(
                          imageUrl: state.listBook[index].volumeInfo.imageLinks
                                  ?.thumbnail ??
                              ""),
                    ),
                  );
                });
          } else if (state is FeatureBooksFailure) {
            return Center(child: Text(state.errMessage));
          } else {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
    );
  }
}
