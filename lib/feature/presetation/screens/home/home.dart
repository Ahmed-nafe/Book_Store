import 'package:book/core/utils/appcolors.dart';
import 'package:book/feature/presetation/screens/home/home_view.dart';
import 'package:book/feature/presetation/splash/splash_screen.dart';
import 'package:flutter/material.dart';

import '../../../../core/utils/app_router.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: AppRouter.router,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: AppColors.bluePurple,
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
