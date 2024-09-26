

import 'package:comamarce/core/units/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../../../../core/units/styles.dart';
import '../../../../../../data/model/chash_order_response/cash_order_response.dart';
import 'modal_button_sheet_list_view.dart';

class ButtonDownWidget extends StatelessWidget {
  const ButtonDownWidget({super.key, required this.cashOrderResponse});
final CashOrderResponse cashOrderResponse;
  @override
  Widget build(BuildContext context) {
    return  ExpansionTile(
      tilePadding:  EdgeInsets.only(bottom: 10.h,top: 10.h),
      title:Text('Order Details',style: Styles.textStyle18),
      minTileHeight: 0,
      collapsedIconColor: AppColors.primaryBlueColor,
      iconColor: AppColors.grayColor,
      children: [
        ModalButtonSheetListView(cashOrderResponse: cashOrderResponse,)
      ],

    );
  }
}

// Row(
// children: [
// Text(
// 'Order Details',
// style: Styles.textStyle14
//     .copyWith(color: Colors.orangeAccent),
// ),
// const SizedBox(
// width: 5,
// ),
// const Icon(
// Icons.arrow_circle_down,
// size: 14,
// color: Colors.orangeAccent,
// ),
// ],
// )