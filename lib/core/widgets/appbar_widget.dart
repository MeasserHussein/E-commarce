import 'package:comamarce/core/units/app_colors.dart';
import 'package:comamarce/features/payment/presentation/manager/cart_cubit/cart_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../units/styles.dart';
import 'package:badges/badges.dart' as badges;

AppBar CustomAppBar({
  String? text,
  VoidCallback? onPressed,
  IconData? icon,
  Widget? image,
  Widget? child,
  Widget? leading,
  double? elevation = 0,
  Widget? badgeContent,
  Widget? titleWidget,
  Color? color = Colors.transparent,
  List<Widget>? actions,

}) {
 return AppBar(
   leading: leading,
   backgroundColor: color,
   title: titleWidget ?? Text(text ?? '', style: Styles.textStyle24w600,),
   actions: actions ?? [
     Padding(
       padding: const EdgeInsets.only(right: 15, top: 10),
       child:IconButton(
           onPressed: onPressed,
           icon:image ?? Icon(icon, color: AppColors.primaryBlueColor,))
     ),
     child ?? Container(),
   ],
   elevation: elevation,
 );
}


