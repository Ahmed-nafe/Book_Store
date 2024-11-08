import 'package:book/core/utils/errors.dart';
import 'package:book/feature/presetation/screens/home_screen/data/model/BooksModel.dart';
import 'package:book/feature/presetation/screens/search_screen/data/repos/search_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import '../../../../../../core/utils/api_manger.dart';

class SearchRepoImpl implements SearchRepo {
  SearchRepoImpl(this.apiManger);

  ApiManger apiManger;

  @override
  Future<Either<Failure, List<BooksModel>>> searchBooks(String query) async {
    try {
      var response = await apiManger.get(
          endPoint: "volumes?q=$query&Filtering=free-ebooks&Sorting=relevance");
      print("API Response: $response");
      BooksModel bookModel = BooksModel.fromJson(response);
      final books = bookModel.items?.map((item) {
            return BooksModel(
              kind: bookModel.kind,
              totalItems: bookModel.totalItems,
              items: [item],
            );
          }).toList() ??
          [];
      // List<ProgrammingModel> books = [];
      // for (var item in response["items"]) {
      //   books.add(ProgrammingModel.fromJson(item));
      // }
      return Right(books);
    } on Exception catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioError(e));
      } else {
        return left(
          ServerFailure(e.toString()),
        );
      }
    }
  }
}
