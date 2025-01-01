import 'package:comamarce/features/nav_bar_home/presentation/manager/product_cubit/product_cubit.dart';
import 'package:comamarce/features/nav_bar_home/presentation/view/product_view/widgets/product_cart_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../core/units/app_colors.dart';
import '../../../../../../core/units/shared/helper/constant.dart';
import '../../../../data/model/product_response_model/product_response.dart';
import '../../../manager/cash_order_cubit/cash_order_cubit.dart';

class ProductGridView extends StatelessWidget {
  const ProductGridView({super.key, required this.dataList});

  final List<ProductData?> dataList;
  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      color: AppColors.primaryBlueColor,
      onRefresh: ()=>context.read<ProductCubit>().getProduct(),
      child: GridView.builder(
          physics: const BouncingScrollPhysics(),
          itemCount: dataList.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 10.h,
              crossAxisSpacing: 5.w,
              mainAxisExtent: 300.h
          ),
          itemBuilder:
              (context, index) {
            return ProductCartFeatured(
              data: dataList[index]!,
            );
          }

      ),
    );
  }
}
