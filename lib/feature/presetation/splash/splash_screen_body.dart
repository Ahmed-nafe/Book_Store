import 'package:book/core/utils/app_router.dart';
import 'package:book/core/utils/asset.dart';
import 'package:book/feature/presetation/screens/home/home_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

class SplashScreenBody extends StatefulWidget {
  const SplashScreenBody({super.key});

  @override
  State<SplashScreenBody> createState() => _SplashScreenBodyState();
}

class _SplashScreenBodyState extends State<SplashScreenBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<double> scaleAnimation;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    initScaleAnimation();
    navigatorToHome();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        scaleAnimationBuilder(),
      ],
    );
  }

  void initScaleAnimation() {
    animationController = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    );
    scaleAnimation = Tween<double>(
      begin: 0,
      end: 1.5,
    ).animate(animationController);
    animationController.forward();
  }

  AnimatedBuilder scaleAnimationBuilder() {
    return AnimatedBuilder(
        animation: scaleAnimation,
        builder: (context, _) {
          return ScaleTransition(
            scale: scaleAnimation,
            child: SvgPicture.asset(
              AssetsData.logo,
              height: MediaQuery.sizeOf(context).height * 0.05,
            ),
          );
        });
  }

  void navigatorToHome() {
    Future.delayed(const Duration(seconds: 3), () {
      GoRouter.of(context).push(
        AppRouter.homeView,
      );
    });
  }
}
