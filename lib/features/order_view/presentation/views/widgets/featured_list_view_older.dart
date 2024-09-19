import 'package:comamarce/features/order_view/data/model/chash_order_response/cash_order_response.dart';
import 'package:comamarce/features/order_view/presentation/views/widgets/text_body_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FeaturedListViewOrder extends StatelessWidget {
  const FeaturedListViewOrder({
    super.key, required this.cashOrderResponse,
  });
  final CashOrderResponse cashOrderResponse;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin:
           EdgeInsets.symmetric(horizontal: 20.w, vertical: 5.h),
          padding:  EdgeInsets.only(left: 10.w, right: 20.w, top: 15.h),
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                blurRadius: 10,
                color: Colors.grey.withOpacity(.4),
                offset:  Offset(10.w, 10.h),
                spreadRadius: 5.sp,
              ),
            ],
            borderRadius: BorderRadius.circular(8.sp),
            color: Colors.white,
          ),
          child:  TextBodyWidget(
            cashOrderResponse:cashOrderResponse ,
          ),
        ),
      ],
    );
  }
}
