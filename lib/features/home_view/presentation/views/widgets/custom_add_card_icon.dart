import 'package:comamarce/core/units/app_colors.dart';
import 'package:comamarce/core/widgets/show_snack_bar.dart';
import 'package:comamarce/features/payment/presentation/manager/cart_cubit/cart_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../main.dart';
import '../../../data/grid_item_model.dart';



class CustomAddCardIcon extends StatelessWidget {
final Color? backgroundColor;



  const CustomAddCardIcon({super.key, this.backgroundColor=AppColors.ofWhiteColor,});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: backgroundColor,
      radius: 12,
        child:const Icon(Icons.add,color: Colors.white,size: 20,));
  }
}