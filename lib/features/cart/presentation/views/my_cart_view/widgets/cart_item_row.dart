import 'package:cached_network_image/cached_network_image.dart';
import 'package:comamarce/core/units/app_colors.dart';
import 'package:comamarce/features/cart/presentation/data/model/cart_response_model.dart';
import 'package:comamarce/features/cart/presentation/views/manager/cart_cubit/cart_cubit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../../core/units/styles.dart';
import 'package:badges/badges.dart' as badges;
class CartItemRow extends StatefulWidget {
  const CartItemRow({super.key, required this.productItems});

  final ProductsList productItems;

  @override
  State<CartItemRow> createState() => _CartItemRowState();
}

class _CartItemRowState extends State<CartItemRow> {
  @override
  Widget build(BuildContext context) {
   var cubit= context.read<CartItemCubit>();
    return Column(
      children: [
        Transform.translate(
          offset: Offset(0,5.h),
          child: badges.Badge(
            badgeStyle: const badges.BadgeStyle(
              badgeColor: AppColors.primaryBlueColor,
            ),
            badgeContent: Text(widget.productItems.count.toString(),style: const TextStyle(color: Colors.white),),
            child: Container(
              clipBehavior: Clip.hardEdge,
              width: 80.w,
              height: 80.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
              ),
              child: CachedNetworkImage(
                imageUrl:  widget.productItems.product!.imageCover!,
                  fit: BoxFit.contain,
              )
            ),
          ),
        ),
        SizedBox(
          width: 100.w,
            child: Column(
              children: [
                Text(
                          widget.productItems.price.toString(),
                          maxLines: 1,
                          overflow: TextOverflow.visible,
                          textAlign: TextAlign.center,
                          style: Styles.textStyle16,
                        ),
                Text(
                      '${(widget.productItems.count! * widget.productItems.price!)}'    ,
                          maxLines: 2,
                          overflow: TextOverflow.visible,
                          textAlign: TextAlign.center,
                          style: Styles.textStyle16,
                        ),
              ],
            )),
      ],
    );
  }
}
