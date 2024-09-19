import 'package:comamarce/core/units/styles.dart';
import 'package:comamarce/features/order_view/data/model/chash_order_response/cash_order_response.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ModalButtonSheetComponant extends StatelessWidget {
  const ModalButtonSheetComponant({super.key, required this.cartItems});
final CartItems cartItems;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 10.h),
      padding: EdgeInsets.all(10.sp),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8.sp),
        border: Border.all(width: .2.w),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top:4),
            child:Container(
              width: 60.w,
              height: 70.h,
              decoration:  BoxDecoration(
                  borderRadius: BorderRadius.circular(8.sp),
                  image:  DecorationImage(
                    image: NetworkImage(cartItems.product?.imageCover??''),
                    fit: BoxFit.cover,
                  )
              ),
            ),
          ),
          const SizedBox(width: 10,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
               Text(
                r'#' '${cartItems.product?.sId??''}',
              ),
               SizedBox(height: 5.h,),
              Text(
                cartItems.product?.brand?.name??'',style: Styles.textStyle16,
              ),
               SizedBox(height: 5.h,),
               SizedBox(
                 width: 250.w,
                 child: Text(
                   textAlign: TextAlign.start,
                  cartItems.product?.title??'' ,
                               ),
               ),
               SizedBox(height: 5.h,),
               Row(
                children: [
                  const Text(
                    'Price:',
                  ),
                  Text( '${cartItems.price} EGP'),
                ],
              ),
               SizedBox(height: 5.h,),
              Row(
                children: [
                  const Text(
                    'total:',
                  ),
                  Text( '${(cartItems.price! * cartItems.count!)} EGP'),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}


