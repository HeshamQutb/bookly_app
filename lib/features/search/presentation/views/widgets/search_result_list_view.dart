import 'package:bookly_app/features/search/presentation/view_model/search_cubit/search_cubit.dart';
import 'package:bookly_app/features/search/presentation/views/widgets/search_book_list_view_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/widgets/custom_error_widget.dart';
import '../../../../../core/widgets/custom_loading_indicator.dart';

class SearchResultListView extends StatelessWidget {
  const SearchResultListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchCubit, SearchState>(
      builder: (context, state) {
        if (state is SearchSuccess) {
          return SliverList(
            delegate: SliverChildBuilderDelegate(
              childCount: state.books.length,
              (context, index) =>  Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10.0),
                child: SearchBookListViewItem(bookModel: state.books[index],),
              ),
            ),
          );
        } else if (state is SearchFailure) {
          return SliverToBoxAdapter(
            child: CustomErrorWidget(
              errorMessage: state.errorMessage,
            ),
          );
        } else if (state is SearchLoading) {
          return const SliverToBoxAdapter(
            child: CustomLoadingIndicator(),
          );
        } else {
          return const SliverFillRemaining(
            child: Center(
              child: Text('Search for a book'),
            ),
          );
        }
      },
    );
  }
}
