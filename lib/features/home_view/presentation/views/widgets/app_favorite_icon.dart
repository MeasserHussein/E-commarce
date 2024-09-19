import 'dart:convert';

import 'package:comamarce/core/units/app_colors.dart';
import 'package:comamarce/features/cart/presentation/data/model/cart_response_model.dart';
import 'package:comamarce/features/home/presentation/manager/product_cubit/add_to_cart_cubit/add_to_cart_cubit.dart';
import 'package:comamarce/features/home/presentation/manager/product_cubit/add_to_cart_cubit/add_to_cart_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppFavoriteIcon extends StatefulWidget {
  const AppFavoriteIcon({
    super.key,
    this.backgroundColor = Colors.white,
    this.size = 20,
  });

  final Color? backgroundColor;
  final double? size;

  @override
  State<AppFavoriteIcon> createState() => _AppFavoriteIconState();
}

class _AppFavoriteIconState extends State<AppFavoriteIcon> {
  bool isActive = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        isActive=!isActive;
        setState(() {

        });
      },
      child: CircleAvatar(
        radius: 15,
        backgroundColor: widget.backgroundColor,
        child: isActive ? Icon(
          Icons.favorite,
          color: AppColors.primaryBlueColor,
          size: widget.size,
        ) :
        Icon(
          Icons.favorite_border,
          color: AppColors.primaryBlueColor,
          size: widget.size,
        ),
      ),
    );
  }
}