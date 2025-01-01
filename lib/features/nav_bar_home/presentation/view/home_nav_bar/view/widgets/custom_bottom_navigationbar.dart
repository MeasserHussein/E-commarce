import 'package:comamarce/core/units/app_colors.dart';
import 'package:flutter/material.dart';

import '../../../../manager/app_state_cubit/app_state_cubit.dart';


BottomNavigationBar customBottomNavigationBar(AppCubit cubit) {
  return BottomNavigationBar(
    items: cubit.buttons,
    onTap: (index) {
      cubit.changeIndex(index);
    },
    backgroundColor: AppColors.primaryBlueColor,
    type: BottomNavigationBarType.fixed,
    currentIndex:cubit.currentIndex,
    elevation: 0,
    selectedItemColor: Colors.orange,
    selectedFontSize: 0,
    unselectedItemColor: Colors.white,
  );
}