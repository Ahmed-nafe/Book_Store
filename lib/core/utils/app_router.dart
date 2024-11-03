import 'package:book/feature/presetation/splash/splash_screen.dart';
import 'package:go_router/go_router.dart';
import '../../feature/presetation/screens/details_Screen/book_details_view.dart';
import '../../feature/presetation/screens/home_screen/home_view.dart';

abstract class AppRouter {
  static String homeView ="/homeView";
  static String detailsView = "/detailsView";
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
        path: detailsView,
        builder: (context, state) => const BookDetailsView(),
      ),
    ],
  );
}