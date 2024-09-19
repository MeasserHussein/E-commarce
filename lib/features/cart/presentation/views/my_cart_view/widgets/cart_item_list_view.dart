import 'package:comamarce/features/cart/presentation/data/model/cart_response_model.dart';
import 'package:comamarce/features/cart/presentation/views/manager/cart_cubit/cart_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'cart_item_row.dart';



class CartItemListView extends StatelessWidget {
  final List<ProductsList> productItems;

  const CartItemListView({super.key,  required this.productItems});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120.h,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: productItems.length,
          itemBuilder: (context,index){
            return  CartItemRow(productItems:productItems[index]);
          }),
    );
  }
}