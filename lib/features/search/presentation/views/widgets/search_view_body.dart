import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/search/presentation/manager/search_cubit/search_cubit.dart';
import 'package:bookly_app/features/search/presentation/views/widgets/custom_search_text_field.dart';
import 'package:bookly_app/features/search/presentation/views/widgets/search_result_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomSearchTextField(
            onChanged: (searchWord) {
              final word = searchWord?.trim() ?? "";
              if (word.isEmpty) {
                Text("Enter Worrd to search");
              } else {
                BlocProvider.of<SearchCubit>(context)
                    .getSearchResult(searchWord: word);
              }
            },
            onSubmitted: (searchWord) {
              final word = searchWord?.trim() ?? "";
              if (word.isEmpty) {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text("Please enter a search keyword."),
                  ),
                );
              } else {
                BlocProvider.of<SearchCubit>(context)
                    .getSearchResult(searchWord: word);
              }
            },
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            "Search results",
            style: Styles.textStyle18,
          ),
          SizedBox(
            height: 20,
          ),
          Expanded(child: SearchResultListView()),
        ],
      ),
    );
  }
}
