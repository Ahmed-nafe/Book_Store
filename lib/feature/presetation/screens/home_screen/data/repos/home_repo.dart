import 'package:book/core/utils/errors.dart';
import 'package:dartz/dartz.dart';
import '../model/BooksModel.dart';

abstract class HomeRepo {
  Future<Either<Failure, List<BooksModel>>> fetchNewestBooks();

  Future<Either<Failure, List<BooksModel>>> fetchFeaturedBooks();

  Future<Either<Failure, List<BooksModel>>> fetchSimilarBooks(
      {required String category});
}
