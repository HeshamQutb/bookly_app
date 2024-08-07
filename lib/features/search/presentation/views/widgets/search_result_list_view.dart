import 'package:bookly_app/features/search/presentation/views/widgets/search_book_list_view_item.dart';
import 'package:flutter/material.dart';

class SearchResultListView extends StatelessWidget {
  const SearchResultListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        childCount: 10,
        (context, index) => const Padding(
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10.0),
          child: SearchBookListViewItem(),
        ),
      ),
    );
  }
}
