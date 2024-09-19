import 'dart:async';

import 'package:comamarce/core/units/app_colors.dart';
import 'package:comamarce/core/units/routing/app_routes.dart';
import 'package:comamarce/core/units/styles.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lottie/lottie.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: SafeArea(child: SplashViewBody()));
  }
}

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with TickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slidingAnimation;

  @override
  void initState() {
    super.initState();
    initialSlidingAnimation();
    Timer(const Duration(seconds: 3), () {
      context.go(AppRoute.login);
    });
  }

  void initialSlidingAnimation() {
    animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 1));
    slidingAnimation =
        Tween<Offset>(begin: const Offset(0, 20), end: Offset.zero)
            .animate(animationController);
    animationController.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Lottie.asset(
            'assets/splash/cart.json',
          ),
          AnimatedBuilder(
            builder: (context, _) {
              return SlideTransition(
                position: slidingAnimation,
                child:  Column(
                  children: [
                    Text(
                      'Welcome to Logo',
                      textAlign: TextAlign.center,
                      style: Styles.textStyle25.copyWith(color: AppColors.primaryBlueColor,decoration:TextDecoration.overline),
                    ),
                    const Text(
                      'FUTURE OF FASHION SEARCH',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: AppColors.primaryBlueColor,fontSize: 12),
                    ),
                  ],
                ),
              );
            },
            animation: slidingAnimation,
          ),

        ],
      ),
    );
  }
}
