import 'package:comamarce/core/units/routing/app_routes.dart';
import 'package:comamarce/features/home/data/model/home_category_response.dart';
import 'package:comamarce/features/home/presentation/view/widgets/images_category_and_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

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
