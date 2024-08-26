import 'package:bookly_app/core/errors/failures.dart';
import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/features/search/data/repos/search_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import '../../../../core/utils/api_service.dart';

class SearchRepoImpl implements SearchRepo {
  ApiService apiServices;
  SearchRepoImpl(this.apiServices);

  @override
  Stream<Either<Failure, List<BookModel>>> fetchBooks({
    required String search,
  })  async*{
    try {
      var data = await apiServices.get(
        endPoint: 'volumes?Sorting=relevance&q=$search',
      );
      List<BookModel> books = [];

      for (var item in data['items']) {
        books.add(BookModel.fromJson(item));
      }
      yield right(books);
    } catch (e) {
      if (e is DioException) {
        yield left(
          ServerFailure.fromDioError(e),
        );
      }
      yield left(
        ServerFailure(e.toString()),
      );
    }
  }
}
