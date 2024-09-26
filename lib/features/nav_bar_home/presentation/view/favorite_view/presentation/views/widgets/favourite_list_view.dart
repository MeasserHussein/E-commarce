
import 'package:comamarce/features/nav_bar_home/data/model/product_response_model/product_response.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../../../../../../../core/units/routing/app_routes.dart';
import 'favorite_items.dart';

class FavoriteListView extends StatelessWidget {
  const FavoriteListView({super.key, required this.productResponse, });

  final ProductResponse productResponse;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListView.builder(
            itemCount: productResponse.data!.length,
            physics: const BouncingScrollPhysics(),
            shrinkWrap: true,
            itemBuilder: (context, index) => Padding(
                  padding:  EdgeInsets.symmetric(vertical: 5.h),
                  child: GestureDetector(
                      onTap: () {
                        context.push(AppRoute.detailsView,extra: productResponse.data![index]);
                      },
                      child: FavoriteItems(
                        products:productResponse.data![index] ,
                      )),
                )),
      ],
    );
  }
}
