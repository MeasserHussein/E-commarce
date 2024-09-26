
import 'package:comamarce/features/nav_bar_home/data/model/home_category_response.dart';
import 'package:comamarce/features/nav_bar_home/presentation/view/category_and_brand_view/widgets/images_category_and_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CategoryGridViewBuilderWidget extends StatelessWidget {
  const CategoryGridViewBuilderWidget({super.key, required this.data});

  final List<DataCategory?> data;





  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300.h,
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing:0,
          mainAxisExtent: 100,
        ),
        itemCount: data.length,
        scrollDirection: Axis.horizontal,
        physics: const BouncingScrollPhysics(),
        itemBuilder: (context,index){
          return  ImagesCategoryAndText(
            data:data[index]! ,
          );
        },
      ),
    );
  }
}
