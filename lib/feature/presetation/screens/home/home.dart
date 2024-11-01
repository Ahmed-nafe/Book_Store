import 'package:book/core/utils/appcolors.dart';
import 'package:book/feature/presetation/screens/home/views/home_view.dart';
import 'package:book/feature/presetation/splash/splash_screen.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: SplashScreen.routeName,
      routes: {
        SplashScreen.routeName: (context) => const SplashScreen(),
        HomeView.routeName: (context) => const HomeView(),
      },
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: AppColors.bluePurple,
      ),
      debugShowCheckedModeBanner: false,
      home: const SplashScreen(),
    );
  }
}
