import 'package:book/core/utils/errors.dart';
import 'package:book/feature/presetation/screens/home_screen/data/model/BookModel.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo {
  Future<Either<Failure, List<BookModel>>> fetchBestSellerBooks();

  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks();
}
