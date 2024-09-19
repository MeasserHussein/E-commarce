
import 'package:comamarce/core/widgets/discount_view_widget.dart';
import 'package:comamarce/features/home_view/presentation/views/widgets/app_favorite_icon.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/units/styles.dart';
import '../../../../cart/presentation/data/model/cart_response_model.dart';


class CardItems extends StatelessWidget {
  const CardItems({super.key,});


  //final GridItemModel gridItemModel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5,vertical: 5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
           Text(
            'productModel.data!.first.title ?? ''',
            maxLines: 1,
            style: Styles.textStyle18w600,
            overflow: TextOverflow.visible,
          ),
           SizedBox(height: 5.h,),

          Text(
            'productModel.data!.first.description ??''',
            style: Styles.textStyle16.copyWith(fontWeight: FontWeight.bold,color:Colors.black45),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),

           SizedBox(height: 5.h,),
          Row(
            children: [
              Text(
                '55 LE',
                style: Styles.textStyle20.copyWith(fontWeight: FontWeight.bold, color:Colors.red),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,

              ),
               SizedBox(width: 5.w,),
                const DiscountViewWidget(),
              const Spacer(),
               AppFavoriteIcon(size: 25,),
            ],
          ),

        ],
      ),
    );
  }
}

