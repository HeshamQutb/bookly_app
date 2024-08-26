import 'package:bookly_app/features/search/data/repos/search_repo.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../home/data/models/book_model/book_model.dart';

part 'search_state.dart';

class SearchCubit extends Cubit<SearchState> {
  SearchCubit(this.searchRepo) : super(SearchInitial());

  final SearchRepo searchRepo;

  void fetchBooks({required String search}) {
    emit(SearchLoading());
    searchRepo.fetchBooks(search: search).listen(
      (result) {
        result.fold(
          (failure) {
            emit(SearchFailure(failure.errorMessage));
          },
          (books) {
            emit(SearchSuccess(books));
          },
        );
      },
    );
  }
}
