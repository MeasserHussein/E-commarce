import 'dart:async';

import 'package:comamarce/core/units/app_colors.dart';
import 'package:comamarce/core/units/routing/app_router.dart';
import 'package:comamarce/core/units/routing/app_routes.dart';
import 'package:comamarce/core/units/shared/helper/constant.dart';
import 'package:comamarce/core/units/styles.dart';
import 'package:comamarce/features/no_internet_niew/no_internet_view.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:lottie/lottie.dart';

import '../../../../core/units/shared/helper/shared_pref_helper.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
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
  Timer? _timer;
  @override
  void initState() {
    super.initState();
    initialSlidingAnimation();
    //checkConnectionAndNavigate();
    checkToken();
  }

  @override
  void dispose() {
    animationController.dispose();
    _timer?.cancel();
    super.dispose();
  }

  void checkToken() {
    _timer=Timer.periodic(Duration(seconds: 3), (value) async {
      String sc =
          await SharedPrefHelper.getSecuredString(SharedPrefKeys.userToken);
      if (sc != null && sc.isNotEmpty) {
        context.go(AppRoute.home);
      } else {
        context.go(AppRoute.login);
      }
    });
  }

  // void checkConnectionAndNavigate() async {
  //   var result = await Connectivity().checkConnectivity();
  //   if(result ==ConnectivityResult.none){
  //     checkToken();
  //   }

  //}

  void initialSlidingAnimation() {
    animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 2));
    slidingAnimation = Tween<Offset>(begin: Offset(0, 20.h), end: Offset.zero)
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
            animation: slidingAnimation,
            builder: (context, _) {
              return SlideTransition(
                position: slidingAnimation,
                child: const Column(
                  children: [
                    Text(
                      'Welcome to Logo',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: AppColors.primaryBlueColor,
                          fontSize: 25,
                          decoration: TextDecoration.overline),
                    ),
                    Text(
                      'FUTURE OF FASHION SEARCH',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: AppColors.primaryBlueColor, fontSize: 12),
                    ),
                  ],
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
