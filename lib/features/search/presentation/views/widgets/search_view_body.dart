import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/best_seller_list_view_item.dart';
import 'package:bookly_app/features/search/presentation/views/widgets/custom_search_text_field.dart';
import 'package:flutter/material.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomSearchTextField(),
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
          // Expanded(child: SearchResultListView()),
        ],
      ),
    );
  }
}

// class SearchResultListView extends StatelessWidget {
//   const SearchResultListView({super.key});
  

//   @override
//   Widget build(BuildContext context) {
//     return ListView.builder(
//       // shrinkWrap: true, // takes the height of the list view children
//       // physics: const NeverScrollableScrollPhysics(),
//       padding: EdgeInsets.zero,
//       itemCount: 10,
//       itemBuilder: (context, index) {
//         return Padding(
//           padding: const EdgeInsets.symmetric(vertical: 10),
//           child: BestSellerListViewItem(),
//         );
//       },
//     );
//   }
// }
