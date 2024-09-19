import 'package:flutter/material.dart';

import '../units/app_colors.dart';

void showSnackBar(BuildContext context, String message, {Duration? duration}){
  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
    behavior: SnackBarBehavior.floating,
    duration:duration  ?? const Duration(seconds: 2) ,
    content: Text(message),
    backgroundColor: AppColors.primaryBlueColor,
  ));
}
