import 'package:dartz/dartz.dart';

import '../../../../../../core/utils/errors.dart';
import '../../../home_screen/data/model/BooksModel.dart';

abstract class SearchRepo {

  Future<Either<Failure, List<BooksModel>>> searchBooks(String query);
}