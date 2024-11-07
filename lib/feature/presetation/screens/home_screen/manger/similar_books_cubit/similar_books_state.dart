part of 'similar_books_cubit.dart';

@immutable
sealed class SimilarBooksState {}

final class SimilarBooksInitial extends SimilarBooksState {}
final class SimilarBooksLoading extends SimilarBooksState {}
final class SimilarBooksError extends SimilarBooksState {
  String errorMessage;
  SimilarBooksError(  this.errorMessage);
}
final class SimilarBooksSuccess extends SimilarBooksState {
  List<BooksModel> books;
  SimilarBooksSuccess(this.books);
}
