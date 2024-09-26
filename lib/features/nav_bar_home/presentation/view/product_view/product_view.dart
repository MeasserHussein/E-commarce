
import 'package:comamarce/features/nav_bar_home/data/model/product_response_model/product_response.dart';
import 'package:comamarce/features/nav_bar_home/presentation/view/product_view/widgets/product_grid_view.dart';
import 'package:comamarce/features/nav_bar_home/presentation/view/product_view/widgets/product_view_body.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../manager/product_cubit/add_to_cart_cubit/add_to_cart_cubit.dart';
import '../../manager/product_cubit/add_to_cart_cubit/add_to_cart_state.dart';
import '../category_and_brand_view/widgets/aliert_dialong_vontinus_shipping_or_go_to_cart.dart';
import '../category_and_brand_view/widgets/search_and_cart_icon.dart';
import 'widgets/product_cart_view.dart';

class ProductView extends StatelessWidget {
  const ProductView({super.key, required this.dataList,});

  final List<ProductData?> dataList;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  const SearchAndCartIcon(),
      ),
      body: Padding(
        padding:  EdgeInsets.symmetric(horizontal: 8.0.w, vertical: 5.h),
        child:ProductViewBody(dataList: dataList,),
      ),
    );
  }
}


