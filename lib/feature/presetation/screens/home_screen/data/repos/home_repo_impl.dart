import 'package:book/core/utils/api_manger.dart';
import 'package:book/core/utils/errors.dart';
import 'package:book/feature/presetation/screens/home_screen/data/repos/home_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import '../model/BookModel.dart';

class HomeRepoImpl implements HomeRepo {
  ApiManger apiManger;

  HomeRepoImpl(this.apiManger);

  @override
  Future<Either<Failure, List<BookModel>>> fetchNewestBooks() async {
    try {
      var response = await apiManger.get(
          endPoint:
              "volumes?q=Programming&Filtering=free-ebooks&Sorting=newest");
      // final bookModel = BookModel.fromJson(response);
      //
      // final books =
      //     bookModel.items?.map((item) => BookModel.fromJson(item)).toList();
      List<BookModel> books = [];
      for (var item in response["items"]) {
        books.add(BookModel.fromJson(item));
      }

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

  @override
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks() async {
    try {
      var response = await apiManger.get(
          endPoint: "volumes?q=Programming&Filtering=free-ebooks");
      // BookModel bookModel = BookModel.fromJson(response);
      // final books = bookModel.items?.map((item) {
      //   return BookModel(
      //     kind: bookModel.kind,
      //     totalItems: bookModel.totalItems,
      //     items: [item],
      //   );
      // }).toList() ?? [];
      List<BookModel> books = [];
      for (var item in response["items"]) {
        books.add(BookModel.fromJson(item));
      }
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
