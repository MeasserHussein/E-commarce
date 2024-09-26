import 'package:comamarce/features/nav_bar_home/presentation/view/product_view/widgets/product_cart_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../data/model/product_response_model/product_response.dart';

class ProductGridView extends StatelessWidget {
  const ProductGridView({super.key, required this.dataList});

  final List<ProductData?> dataList;
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
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

    );
  }
}
