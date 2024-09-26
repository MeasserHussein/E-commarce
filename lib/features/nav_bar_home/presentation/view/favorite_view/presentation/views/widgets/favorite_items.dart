
import 'package:comamarce/core/widgets/design_auth_container.dart';
import 'package:comamarce/core/widgets/image_design_container.dart';
import 'package:comamarce/features/nav_bar_home/data/model/product_response_model/product_response.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'favorite_featured_item.dart';

class FavoriteItems extends StatelessWidget {
  const FavoriteItems({
    super.key, required this.products,
  });

  final ProductData products;
  @override
  Widget build(BuildContext context) {
    return DesignAuthContainer(
      widget: Padding(
        padding:  EdgeInsets.all(10.sp),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ImageDesignContainer(
              radius: 12.sp,
              width:150.w,
              height: 150.h,
              imageUrl:products.imageCover ??'' ,
            ),
             SizedBox(width: 5.w,),
             Expanded(
              child: FavoriteFeaturedItems(
                products: products,
              ),
            ),
          ],
        ),
      ),
    );
  }
}




