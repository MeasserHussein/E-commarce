import 'package:comamarce/core/units/app_colors.dart';
import 'package:comamarce/features/home/presentation/manager/product_cubit/product_cubit.dart';
import 'package:comamarce/features/home/presentation/manager/product_cubit/product_state.dart';
import 'package:comamarce/features/home/presentation/view/product_skeleton/product_skeleton.dart';
import 'package:comamarce/features/home/presentation/view/product_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BlocBuilderProductCart extends StatelessWidget {
  const BlocBuilderProductCart({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProductCubit, ProductState>(
      builder: (context, state) {
        return state.maybeWhen(
           productLoading: ()=>const ProductSkeleton(),
            productSuccess: (product){
              var productList = product.data;
            return ProductView(dataList:productList ??[],);

            },
          productError: (error){
            return Center(child: Text(error));
          },
            orElse: ()=>const SizedBox.shrink(),


        );
      },
    );
  }
}
