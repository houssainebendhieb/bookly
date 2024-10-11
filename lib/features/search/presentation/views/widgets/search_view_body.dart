import 'package:bookly/core/utils/style.dart';
import 'package:bookly/features/search/presentation/views/widgets/custom_text_search.dart';
import 'package:bookly/features/search/presentation/views/widgets/search_list_view.dart';
import 'package:flutter/material.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomSearchTextField(),
          SizedBox(
            height: 16,
          ),
          Text("Search Result", style: Styles.textStyle18),
          Expanded(child: SearchResultListView())
        ],
      ),
    );
  }
}
