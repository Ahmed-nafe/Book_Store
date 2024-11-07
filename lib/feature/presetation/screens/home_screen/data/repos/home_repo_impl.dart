import 'package:book/core/utils/api_manger.dart';
import 'package:book/core/utils/errors.dart';
import 'package:book/feature/presetation/screens/home_screen/data/model/BooksModel.dart';
import 'package:book/feature/presetation/screens/home_screen/data/repos/home_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class HomeRepoImpl implements HomeRepo {
  ApiManger apiManger;

  HomeRepoImpl(this.apiManger);

  @override
  Future<Either<Failure, List<BooksModel>>> fetchNewestBooks() async {
    try {
      var response = await apiManger.get(
          endPoint:
          "volumes?q=computer science&Filtering=free-ebooks&Sorting=newest");
      BooksModel bookModel = BooksModel.fromJson(response);
      final books = bookModel.items?.map((item) {
        return BooksModel(
          kind: bookModel.kind,
          totalItems: bookModel.totalItems,
          items: [item],
        );
      }).toList() ?? [];
      // List<ComputerScienceModel> books = [];
      // for (var item in response["items"]) {
      //   books.add(ComputerScienceModel.fromJson(item));
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

  @override
  Future<Either<Failure, List<BooksModel>>> fetchFeaturedBooks() async {
    try {
      var response = await apiManger.get(
          endPoint: "volumes?q=Programming&Filtering=free-ebooks");
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

  @override
  Future<Either<Failure, List<BooksModel>>> fetchSimilarBooks(
      {required String category}) async {
    try {
      var response = await apiManger.get(
          endPoint: "volumes?q=computer science&Filtering=free-ebooks&Sorting=relevance");
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