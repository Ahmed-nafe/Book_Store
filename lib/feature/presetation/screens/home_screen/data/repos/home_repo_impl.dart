import 'package:book/core/utils/api_manger.dart';
import 'package:book/core/utils/errors.dart';
import 'package:book/feature/presetation/screens/home_screen/data/model/BookModel.dart';
import 'package:book/feature/presetation/screens/home_screen/data/repos/home_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class HomeRepoImpl implements HomeRepo {
  ApiManger apiManger;

  HomeRepoImpl(this.apiManger);

  @override
  Future<Either<Failure, List<BookModel>>> fetchNewestBooks() async {
    try {
      var response = await apiManger.get(
          endPoint:
              "volumes?q=subject:Programming&Filtering=free-ebooks&Sorting=newest");
      final bookModel = BookModel.fromJson(response);

      final books = bookModel.items
              ?.map((item) => BookModel.fromJson(item.toJson()))
              .toList() ??
          [];

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
          endPoint: "volumes?q=subject:Programming&Filtering=free-ebooks");
      final bookModel = BookModel.fromJson(response);

      final books = bookModel.items
              ?.map((item) => BookModel.fromJson(item.toJson()))
              .toList() ??
          [];

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
