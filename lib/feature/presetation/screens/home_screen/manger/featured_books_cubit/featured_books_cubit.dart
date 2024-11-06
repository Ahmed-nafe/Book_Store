import 'package:bloc/bloc.dart';
import 'package:book/feature/presetation/screens/home_screen/data/model/BookModel.dart';
import 'package:book/feature/presetation/screens/home_screen/data/repos/home_repo.dart';
import 'package:meta/meta.dart';

part 'featured_books_state.dart';

class FeaturedBooksCubit extends Cubit<FeaturedBooksState> {
  FeaturedBooksCubit(this.homeRepo) : super(FeaturedBooksInitial());
  final HomeRepo homeRepo;

  Future <void> fetchFeaturedBooks() async {
    emit(FeaturedBooksLoading());
    var result = await homeRepo.fetchFeaturedBooks();
    result.fold((failure) =>
    {
      emit(FeaturedBooksError(failure.errorMessage))
    }, (books) =>
    {
      emit(FeaturedBooksSuccess(books))
    });
  }
}
