
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../data/model/home_category_response.dart';
import 'brand_images.dart';

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
