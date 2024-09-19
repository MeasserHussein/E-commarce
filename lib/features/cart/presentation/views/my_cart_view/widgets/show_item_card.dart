import 'package:cached_network_image/cached_network_image.dart';
import 'package:comamarce/core/di/dependecy_injection.dart';
import 'package:comamarce/core/units/app_colors.dart';
import 'package:comamarce/core/units/shared/helper/constant.dart';
import 'package:comamarce/core/units/styles.dart';
import 'package:comamarce/core/widgets/show_snack_bar.dart';
import 'package:comamarce/features/cart/presentation/data/model/cart_response_model.dart';
import 'package:comamarce/features/cart/presentation/data/model/send_data_model.dart';
import 'package:comamarce/features/cart/presentation/views/manager/cart_cubit/cart_cubit.dart';
import 'package:comamarce/features/cart/presentation/views/manager/cart_cubit/cart_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_skeleton_ui/flutter_skeleton_ui.dart';
import 'package:go_router/go_router.dart';

import '../../../data/model/cart_update_id_response.dart';

class ShowItemCard extends StatelessWidget {
  const ShowItemCard({
    super.key,
    required this.productList,
    required this.imageSize,
  });

  final ProductsList productList;

  final double imageSize;

  @override
  Widget build(BuildContext context) {
    var cubit = context.read<CartItemCubit>();
    return GestureDetector(
      onTap: () {
        showBottomSheet(
            backgroundColor: Colors.transparent,
            context: context,
            builder: (context) {
              return AlertDialogShowDetailsProductInCart(
                productsList: productList,
              );
            });
        if(cubit.counter >1){
          cubit.counter =productList.count?? 1;
        }
      },
      child: FittedBox(
        fit: BoxFit.scaleDown,
        child: CachedNetworkImage(
          imageUrl: productList.product!.imageCover ?? '',
          width: imageSize.w,
          height: imageSize.h,
          fit: BoxFit.fill,
          placeholder: (context, url) => Skeleton(
              isLoading: true,
              skeleton: Container(
                width: imageSize.w,
                height: imageSize.h,
                color: Colors.grey,
              ),
              child: const SizedBox.shrink()),
        ),
      ),
    );
  }
}

class AlertDialogShowDetailsProductInCart extends StatelessWidget {
  const AlertDialogShowDetailsProductInCart(
      {super.key, required this.productsList});

  final ProductsList productsList;

  @override
  Widget build(BuildContext context) {
    var cubit = context.read<CartItemCubit>();
    return BlocBuilder<CartItemCubit, CartItemState>(
      builder: (context, state) {
        return AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
            side: const BorderSide(width: 5),
          ),
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                children: [
                  AddAndSubtractsWidget(
                    productsList: productsList,
                  ),
                  IconButton(
                      onPressed: () {
                        context.pop();
                        cubit.deleteCard(
                            productId: productsList.product?.id ?? '',
                            token: SharedPrefKeys.userToken);
                      },
                      icon: Icon(
                        Icons.delete_forever,
                        size: 40,
                        color: Colors.red[300],
                      ))
                ],
              ),
              SizedBox(
                height: 10.h,
              ),
              if(productsList.count!>1)
                Align(
                    alignment: Alignment.centerLeft,
                    child: Text('last quantity:${(productsList.count)}')),
              if(productsList.count!>1)
                Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                        'total price:${(productsList.count! * productsList.price!)}')),
            ],
          ),
        );
      },
    );
  }
}

class AddAndSubtractsWidget extends StatefulWidget {
  final ProductsList productsList;

  const AddAndSubtractsWidget({super.key, required this.productsList});

  @override
  State<AddAndSubtractsWidget> createState() => _AddAndSubtractsWidgetState();
}

class _AddAndSubtractsWidgetState extends State<AddAndSubtractsWidget> {
  @override
  Widget build(BuildContext context) {
    var cubit = context.read<CartItemCubit>();

    return Column(
      children: [
        if(cubit.counter>1)
        SizedBox(
          width: 200.w,
            child:  Text('The counter will restart when you close this view',style: Styles.textStyle14.copyWith(
              color: Colors.grey
            ),)),
        SizedBox(
          height: 10.h,
        ),
        Container(
          width: 200.w,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(40.sp),
              color: AppColors.primaryBlueColor),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CircleAvatar(
                  backgroundColor: AppColors.primaryBlueColor,
                  child: IconButton(
                      onPressed: () {
                        cubit.changeDecrement(widget.productsList);
                      },
                      icon: const Icon(
                        Icons.remove,
                        color: Colors.white,
                      ))),
              CircleAvatar(
                  backgroundColor: AppColors.primaryBlueColor,
                  child: Text(
                    '${cubit.counter}',
                    style: const TextStyle(color: Colors.white),
                  )),
              CircleAvatar(
                  backgroundColor: AppColors.primaryBlueColor,
                  child: IconButton(
                      onPressed: () {
                        cubit.changeIncrement(widget.productsList);
                      },
                      icon: const Icon(
                        Icons.add,
                        color: Colors.white,
                      ))),
            ],
          ),
        ),
      ],
    );
  }
}
