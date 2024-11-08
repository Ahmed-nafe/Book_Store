import 'package:bloc/bloc.dart';
import 'package:book/feature/presetation/screens/home_screen/data/model/BooksModel.dart';
import 'package:book/feature/presetation/screens/search_screen/data/repos/search_repo.dart';
import 'package:meta/meta.dart';

part 'search_book_state.dart';

class SearchBookCubit extends Cubit<SearchBookState> {
  SearchBookCubit(this.searchRepo) : super(SearchBookInitial());
  SearchRepo searchRepo;

  Future<void> fetchSearchResults(String query) async {
    emit(SearchBookLoading());
    final books = await searchRepo.searchBooks(query);
    books.fold(
      (error) => emit(SearchBookError(
        errorMessage: error.toString(),
      )),
      (book) => emit(SearchBookSuccess(books: book)),
    );
  }
}
