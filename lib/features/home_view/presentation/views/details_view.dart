import 'package:comamarce/features/cart/presentation/data/model/cart_response_model.dart';
import 'package:comamarce/features/home/data/model/product_response_model/product_response.dart';
import 'package:comamarce/features/home_view/presentation/views/widgets/app_favorite_icon.dart';
import 'package:comamarce/features/home_view/presentation/views/widgets/details_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/widgets/appbar_widget.dart';


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
          child: AppFavoriteIcon(
            backgroundColor: Colors.transparent,
            size: 30,
          ),
        ),
      ),
      body:  DetailsViewBody(data: data,),
    );
  }
}


















