import 'package:bloc/bloc.dart';
import 'package:book/feature/presetation/screens/home_screen/data/repos/home_repo.dart';
import 'package:meta/meta.dart';
import '../../data/model/BooksModel.dart';

part 'newest_books_state.dart';

class NewestBooksCubit extends Cubit<NewestBooksState> {
  NewestBooksCubit(this.homeRepo) : super(NewestBooksInitial());
  HomeRepo homeRepo;

  Future<void> fetchNewestBooks() async {
    emit(NewestBooksLoading());
    var result = await homeRepo.fetchNewestBooks();
    result.fold((failure) => {emit(NewestBooksError(failure.errorMessage))},
        (books) => {emit(NewestBooksSuccess(books))});
  }
}
