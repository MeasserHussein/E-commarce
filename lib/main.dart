import 'package:comamarce/core/di/dependecy_injection.dart';
import 'package:comamarce/core/units/shared/helper/api_keys.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_stripe/flutter_stripe.dart';
import 'core/units/app_colors.dart';
import 'core/units/routing/app_router.dart';
import 'observers.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';



void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  setupGetIt();
  Stripe.publishableKey = ApiKeys.publishKey;
  Bloc.observer = SimpleBlocObserver();

  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      builder: (context, child) => ScreenUtilInit(
        designSize: const Size(430, 932),
        minTextAdapt: true,
        child: child,
      ),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          useMaterial3: false
      ).copyWith(
        primaryColor: AppColors.primaryColor,
        appBarTheme: const AppBarTheme(
          foregroundColor: Colors.black87,
          backgroundColor: AppColors.primaryColor,
          elevation: 0,
          centerTitle: true,
          systemOverlayStyle: SystemUiOverlayStyle(
              statusBarColor: AppColors.primaryColor,
              statusBarIconBrightness: Brightness.dark
          ),
          titleTextStyle: TextStyle(color: Colors.black87, fontSize: 20),
        ),
        scaffoldBackgroundColor: AppColors.primaryColor,
      ),
      routerConfig: AppRouter.router
    );
  }
}


