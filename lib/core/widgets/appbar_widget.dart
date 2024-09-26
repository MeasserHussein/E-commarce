import 'package:comamarce/core/units/app_colors.dart';
import 'package:flutter/material.dart';
import '../units/styles.dart';

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


