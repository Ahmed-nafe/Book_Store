part of 'featured_books_cubit.dart';

@immutable
sealed class FeaturedBooksState {}

final class FeaturedBooksInitial extends FeaturedBooksState {}
final class FeaturedBooksLoading extends FeaturedBooksState {}
final class FeaturedBooksError extends FeaturedBooksState {
  final String errorMessage;
  FeaturedBooksError(this.errorMessage);
}
final class FeaturedBooksSuccess extends FeaturedBooksState {
  final List <BooksModel> books;
  FeaturedBooksSuccess(this.books);

}
