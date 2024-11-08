part of 'search_book_cubit.dart';

@immutable
sealed class SearchBookState {}

final class SearchBookInitial extends SearchBookState {}

final class SearchBookError extends SearchBookState {
  String errorMessage;
  SearchBookError({required this.errorMessage});
}

final class SearchBookLoading extends SearchBookState {}

final class SearchBookSuccess extends SearchBookState {
  List<BooksModel> books;
   SearchBookSuccess({required this.books});
}
