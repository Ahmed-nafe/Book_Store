import 'package:book/core/utils/services_locator.dart';
import 'package:book/feature/presetation/screens/home_screen/data/model/BooksModel.dart';
import 'package:book/feature/presetation/screens/home_screen/data/repos/home_repo_impl.dart';
import 'package:book/feature/presetation/screens/home_screen/manger/similar_books_cubit/similar_books_cubit.dart';
import 'package:book/feature/presetation/screens/search_screen/data/repos/search_repo_impl.dart';
import 'package:book/feature/presetation/screens/search_screen/manger/search_book_cubit.dart';
import 'package:book/feature/presetation/screens/search_screen/search_view.dart';
import 'package:book/feature/presetation/splash/splash_screen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import '../../feature/presetation/screens/details_Screen/book_details_view.dart';
import '../../feature/presetation/screens/home_screen/home_view.dart';

abstract class AppRouter {
  static String homeView = "/homeView";
  static String detailsView = "/detailsView";
  static String searchView = "/searchView";
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashScreen(),
      ),
      GoRoute(
        path: homeView,
        builder: (context, state) => const HomeView(),
      ),
      GoRoute(
        path: searchView,
        builder: (context, state) => BlocProvider(
            create: (context) => SearchBookCubit(getIt<SearchRepoImpl>()),
            child: const SearchView()),
      ),
      GoRoute(
        path: detailsView,
        builder: (context, state) => BlocProvider(
          create: (context) => SimilarBooksCubit(
            getIt<HomeRepoImpl>(),
          ),
          child: BookDetailsView(
            booksModel: state.extra as BooksModel,
          ),
        ),
      ),
    ],
  );
}
