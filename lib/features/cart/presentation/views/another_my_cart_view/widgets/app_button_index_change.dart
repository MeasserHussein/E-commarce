import 'package:comamarce/core/units/shared/helper/constant.dart';
import 'package:comamarce/features/cart/presentation/data/model/cart_response_model.dart';
import 'package:comamarce/features/cart/presentation/views/manager/cart_cubit/cart_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../../core/units/app_colors.dart';
import '../../../data/model/cart_update_id_response.dart';


class AppButtonIndexChange extends StatelessWidget {

  const AppButtonIndexChange({super.key, required this.productsList,  });

final ProductsList productsList;

  @override
  Widget build(BuildContext context) {
    var cubit = context.read<CartItemCubit>();
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(40),
          color: AppColors.primaryBlueColor),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CircleAvatar(
              backgroundColor: AppColors.primaryBlueColor,
              child: IconButton(
                  onPressed:(){
                    int counter = productsList.count!;
                    counter--;
                    cubit.updateCard(productId: productsList.product?.id ?? '',
                        count: CartUpdateIdRequest(count: counter),
                        token: SharedPrefKeys.userToken);
                  },
                  icon: const Icon(
                    Icons.remove, color: Colors.white,))),
           CircleAvatar(backgroundColor: AppColors.primaryBlueColor,
              child: Text(productsList.count.toString(), style: const TextStyle(
                  color: Colors.white
              ),)),
          CircleAvatar(
              backgroundColor: AppColors.primaryBlueColor,
              child: IconButton(
                  onPressed: (){
                    int counter = productsList.count!;
                    counter++;
                    cubit.updateCard(productId: productsList.product?.id ?? '',
                        count: CartUpdateIdRequest(count: counter),
                        token: SharedPrefKeys.userToken);
                  },
                  icon: const Icon(
                    Icons.add, color: Colors.white,))),
        ],
      ),
    );
  }
}