import 'package:comamarce/core/units/app_colors.dart';
import 'package:comamarce/core/units/routing/app_routes.dart';
import 'package:comamarce/core/units/styles.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class NoInternetView extends StatelessWidget {
  const NoInternetView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('assets/images/network.webp'),
          Center(
            child: Text(
              textAlign: TextAlign.center,
              'Slow or no internet connection\n Check your internet settings',
              style: Styles.textStyle20,
            ),
          ),
          SizedBox(
            width: 200,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.primaryBlueColor),
              onPressed: () async{
                  var result = await Connectivity().checkConnectivity();
                  if(result ==ConnectivityResult.none) {
                     context.go(AppRoute.splash);
                  }
              },
              child: Text('TRY AGAIN'),
            ),
          ),
        ],
      ),
    );
  }
}
