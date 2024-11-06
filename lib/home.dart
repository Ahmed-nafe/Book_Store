import 'package:book/core/utils/appcolors.dart';
import 'package:book/core/utils/services_locator.dart';
import 'package:book/feature/presetation/screens/home_screen/data/repos/home_repo_impl.dart';
import 'package:book/feature/presetation/screens/home_screen/manger/featured_books_cubit/featured_books_cubit.dart';
import 'package:book/feature/presetation/screens/home_screen/manger/newestbooks/newest_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'core/utils/app_router.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => FeaturedBooksCubit(
            getIt.get<HomeRepoImpl>(),
          )..fetchFeaturedBooks(),
        ),
        BlocProvider(
          create: (context) => NewestBooksCubit(
            getIt.get<HomeRepoImpl>(),
          ),
        )
      ],
      child: MaterialApp.router(
        routerConfig: AppRouter.router,
        theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: AppColors.bluePurple,
        ),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
