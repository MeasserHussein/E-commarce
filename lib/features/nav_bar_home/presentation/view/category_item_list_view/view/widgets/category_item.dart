import 'package:cached_network_image/cached_network_image.dart';
import 'package:comamarce/core/units/app_colors.dart';
import 'package:comamarce/core/units/styles.dart';
import 'package:comamarce/features/nav_bar_home/data/model/home_category_response.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem({
    super.key,
    required this.dataCategory,
  });

  final DataCategory dataCategory;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(16),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.sp),
          side: BorderSide(width: 1.w)
      ),
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            CachedNetworkImage(
              imageUrl: dataCategory.image ?? '',
              height: 75.h,
              width: 75.w,
              fit: BoxFit.cover,
              placeholder: (context,url)=>const CircularProgressIndicator(color: AppColors.primaryBlueColor,),
              errorWidget: (context,url,error)=>Center(child: SizedBox(
                width: 50.w,
                child: const Column(
                  children: [
                    Text('No Image Found',style: TextStyle(color: Colors.red),),
                    Icon(Icons.error_outline,color: Colors.red,)
                  ],
                ),
              )),
            ),
            SizedBox(width: 20.w,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: 250.w,
                  child: Text(dataCategory.name??'' , style: Styles.textStyle30.copyWith(
                      color: AppColors.primaryBlueColor
                  ),),
                ),
                Text(dataCategory.slug ?? 'hhh', style: Styles.textStyle20,),
                Text(dataCategory.createdAt ?? 'hhh', style: Styles.textStyle20,),
                Text(dataCategory.updatedAt ?? 'hhh', style: Styles.textStyle20,),
              ],
            ),
          ],),
      ),
    );
  }
}