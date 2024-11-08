import 'package:bloc/bloc.dart';
import 'package:book/feature/presetation/screens/home_screen/data/model/BooksModel.dart';
import 'package:meta/meta.dart';

import '../../data/repos/home_repo.dart';

part 'similar_books_state.dart';

class SimilarBooksCubit extends Cubit<SimilarBooksState> {
  SimilarBooksCubit(this.homeRepo) : super(SimilarBooksInitial());
  HomeRepo homeRepo;

  Future<void> fetchSimilarBooks({required String category}) async {
    emit(SimilarBooksLoading());
    var result = await homeRepo.fetchSimilarBooks(category: category);
    result.fold(
      (failure) => {
        emit(
          SimilarBooksError(failure.errorMessage),
        )
      },
      (books) => {
        emit(
          SimilarBooksSuccess(books),
        ),
      },
    );
  }
}
