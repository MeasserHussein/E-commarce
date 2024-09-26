
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';

import '../../../../../../../../core/units/app_colors.dart';
import '../../../../../../../../core/units/styles.dart';
import '../../../../../../data/model/chash_order_response/cash_order_response.dart';
import '../../../../../manager/cash_order_cubit/cash_order_cubit.dart';
import 'button_down_widget.dart';

class TextBodyWidget extends StatelessWidget {
  const TextBodyWidget({super.key, required this.cashOrderResponse,});
  final CashOrderResponse cashOrderResponse;

  @override
  Widget build(BuildContext context) {
    DateTime parsedDate = DateTime.parse(cashOrderResponse.createdAt.toString());
    String formattedDate = DateFormat('yyyy-MM-dd').format(parsedDate);
    var cubit = context.read<CashOrderCubit>();
    return  Column(
      children: [
       Row(
         mainAxisAlignment: MainAxisAlignment.spaceBetween,
         crossAxisAlignment: CrossAxisAlignment.start,
         children: [
           Column(
             crossAxisAlignment: CrossAxisAlignment.start,
             children: [
               Row(children: [
                 Text(
                   'Order Num:',
                   style: Styles.textStyle14,
                 ),
                 SizedBox(
                   width: 100.w,
                   child: Text(
                     '${cashOrderResponse.id}',
                     style: Styles.textStyle14,
                     textAlign: TextAlign.center,
                   ),
                 ),
               ],),
                SizedBox(height: 10.h,),
                Row(children: [
                  Text(
                    'Payment:',
                    style: Styles.textStyle14,
                  ),
                  SizedBox(
                    width: 100.w,
                    child: Text(
                      textAlign: TextAlign.center,
                      cashOrderResponse.isPaid==true? 'Master Card' : 'Cash',
                      style: Styles.textStyle14,
                    ),
                  ),
                ],),
               SizedBox(height: 10.h,),
                Row(children: [
                  Text(
                    'Status:',
                    style: Styles.textStyle14,
                  ),
                  SizedBox(
                    width: 100.w,
                    child: Text(
                      textAlign: TextAlign.center,
                      cubit.selectedValue==1 ? 'Paid' : 'Cash',
                      style: Styles.textStyle14,
                    ),
                  ),
                ],),
             ],
           ),
           Column(
             crossAxisAlignment: CrossAxisAlignment.start,
             children: [
               Row(children: [
                 Text(
                   'Date:',
                   style: Styles.textStyle14,
                 ),
                 SizedBox(
                   width: 100.w,
                   child: Text(
                     textAlign: TextAlign.center,
                     formattedDate,
                     style: Styles.textStyle14,
                   ),
                 ),
               ],),
               SizedBox(height: 10.h,),
               Row(children: [
                  Text(
                    'Purchases:',
                    style: Styles.textStyle14,
                  ),
                  SizedBox(
                    width: 100.w,
                    child: Text(
                      textAlign: TextAlign.center,
                      '${cashOrderResponse.totalOrderPrice} LE',
                      style: Styles.textStyle14,
                    ),
                  ),
                ],),

             ],
           ),
         ],
       ),
         SizedBox(
          height: 10.h
        ),
        Container(
          height: 1.h,
          width: double.infinity,
          color: AppColors.primaryBlueColor
        ),
         ButtonDownWidget(cashOrderResponse: cashOrderResponse,),
      ],
    );
  }
}
