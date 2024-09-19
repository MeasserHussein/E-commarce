import 'package:comamarce/core/units/app_colors.dart';
import 'package:comamarce/core/units/styles.dart';
import 'package:comamarce/features/home/data/model/home_category_response.dart';
import 'package:comamarce/features/home/presentation/view/widgets/brand_images.dart';
import 'package:comamarce/features/home/presentation/view/widgets/home_text_and_review_and_salary.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BrandGridViewBuilder extends StatelessWidget {
  const BrandGridViewBuilder({super.key, required this.imagesBrand});

  final List<DataCategory?> imagesBrand ;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150.h,
      child: GridView.builder(
        gridDelegate:  SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 10.w,
          crossAxisSpacing: 10.h,
          childAspectRatio: 1/1.5
        ),
        scrollDirection: Axis.horizontal,
        physics: const BouncingScrollPhysics(),
        itemCount: imagesBrand.length,
        itemBuilder: (context,index){
          return  BrandImages(
            brandsResponse:imagesBrand[index]! ,
          );
        },
      ),
    );
  }
}
