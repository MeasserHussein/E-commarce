import 'package:comamarce/features/nav_bar_home/data/model/product_response_model/product_response.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'details_items.dart';

class DetailsFeatured extends StatelessWidget {
  const DetailsFeatured({
    super.key, required this.data,
  });

final ProductData data;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 10),
          child: Align(
            alignment: Alignment.topCenter,
            child: Container(
              width: 100.w,
              height: 5.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.sp),
                color: Colors.black12,
              ),
            ),
          ),
        ),
         SizedBox(
          height: 10.h,
        ),
        DetailsItems(data:data,),
      ],
    );
  }
}