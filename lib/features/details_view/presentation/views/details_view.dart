import 'package:comamarce/features/cart/presentation/data/model/cart_response_model.dart';
import 'package:comamarce/features/nav_bar_home/data/model/product_response_model/product_response.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/widgets/appbar_widget.dart';
import 'widgets/app_favorite_icon.dart';
import 'widgets/details_view_body.dart';


class DetailsView extends StatelessWidget {
  const DetailsView({
    super.key, required this.data,

  });


  final ProductData data;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        text: 'Details',
        child:  Padding(
          padding: EdgeInsets.only(right: 15.w),
          child:  AppFavoriteIcon(
            backgroundColor: Colors.transparent,
            size: 30.sp,
          ),
        ),
      ),
      body:  DetailsViewBody(data: data,),
    );
  }
}


















