import 'package:cached_network_image/cached_network_image.dart';
import 'package:comamarce/core/units/app_colors.dart';
import 'package:comamarce/features/nav_bar_home/data/model/product_response_model/product_response.dart';
import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class DetailsImageWidget extends StatelessWidget {
   const DetailsImageWidget({
    super.key, required this.data,
  });
  final ProductData data;


  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.hardEdge,
      margin: EdgeInsets.symmetric(horizontal: 10.w),
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16.sp),
            side: BorderSide(width: 1.w,color: AppColors.primaryBlueColor)
        )
      ),
      child: ImageSlideshow(
        /// Width of the [ImageSlideshow].
        width:double.infinity.w,

        height: 330.h,
        /// Height of the [ImageSlideshow].

        /// The page to show when first creating the [ImageSlideshow].
        initialPage: 0,

        /// The color to paint the indicator.
        indicatorColor: Colors.red,

        /// The color to paint behind th indicator.
        indicatorBackgroundColor: Colors.amber,
        indicatorBottomPadding: 18.h,
        /// Auto scroll interval.
        /// Do not auto scroll with null or 0.
        autoPlayInterval: 3000,
        indicatorRadius: 4.sp,
        indicatorPadding: 10.sp,


        /// Loops back to first slide.
        isLoop: true,

        /// The widgets to display in the [ImageSlideshow].
        /// Add the sample image file into the images folder
        children: data.images!.map((e) {
          return Container(
            margin: EdgeInsets.symmetric(horizontal: 12.w),
            clipBehavior: Clip.hardEdge,
            decoration: ShapeDecoration(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16.sp),
              ),
            ),
            child: CachedNetworkImage(imageUrl:e ,
                fit: BoxFit.cover,),
          );
        }).toList(),
      ),
    );
  }
}