import 'package:cached_network_image/cached_network_image.dart';
import 'package:comamarce/core/units/app_colors.dart';
import 'package:comamarce/core/units/routing/app_routes.dart';
import 'package:comamarce/core/units/styles.dart';
import 'package:comamarce/features/home/data/model/home_category_response.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class ImagesCategoryAndText extends StatelessWidget {
  const ImagesCategoryAndText({
    super.key,
    required this.data,
  });

  final DataCategory data;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        context.push(AppRoute.categoryItem,extra: data);
      },
      child: Column(
        children: [
          Container(
            clipBehavior: Clip.hardEdge,
            margin: EdgeInsets.only(top:16.h ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                ),
            child: CachedNetworkImage(
              imageUrl: data.image!,
              fit: BoxFit.fill,
              height: 75.h,
              width: 75.w,
              // placeholder: (context, url) => const Center(
              //   child: CircularProgressIndicator(
              //     color: AppColors.primaryBlueColor,
              //   ),
              // ),
              errorWidget: (context, url, error) => const Icon(
                Icons.error_outline,
                color: Colors.red,
                size: 35,
              ),
            ),
          ),
          Text(
            data.name!,
            style: Styles.textStyle18w600,
            textAlign: TextAlign.center,
            maxLines: 2,
          ),
        ],
      ),
    );
  }
}
// }
// Container(
// margin: EdgeInsets.only(top:16.h ),
// height: 75.h,
// width: 75.w,
// decoration: BoxDecoration(
// borderRadius: BorderRadius.circular(50),
// image:  DecorationImage(
// image: NetworkImage(data.image!),
// fit: BoxFit.scaleDown
// )
// ),
// ),
