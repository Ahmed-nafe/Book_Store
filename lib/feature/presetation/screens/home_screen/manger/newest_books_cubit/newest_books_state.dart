part of 'newest_books_cubit.dart';

@immutable
sealed class NewestBooksState {}

final class NewestBooksInitial extends NewestBooksState {}
final class NewestBooksLoading extends NewestBooksState {}
final class NewestBooksError extends NewestBooksState {
  final String errorMessage;
  NewestBooksError(this.errorMessage);
}
final class NewestBooksSuccess extends NewestBooksState {
  final List <BooksModel> books;
  NewestBooksSuccess(this.books);

}

