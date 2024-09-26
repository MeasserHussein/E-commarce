import 'package:comamarce/core/units/app_colors.dart';
import 'package:comamarce/features/cart/presentation/data/model/cart_response_model.dart';
import 'package:comamarce/features/cart/presentation/views/my_cart_view/widgets/selected_radio_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'anothet_card_list_view.dart';
import '../../my_cart_view/widgets/custom_button.dart';
import '../../my_cart_view/widgets/featured_card_items.dart';

class AnotherCardViewBody extends StatelessWidget {
  const AnotherCardViewBody({super.key, required this.cartResponseModel});

  final CartResponseModel cartResponseModel;
  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
          Expanded(child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 5.0.w),
          child: AnotherCardListView(cartResponseModel:cartResponseModel ,),
        )),
        Container(
          padding:   EdgeInsets.symmetric(horizontal: 10.w,vertical: 15.h),
          decoration: const BoxDecoration(
              color: AppColors.ofWhiteColor,
              borderRadius: BorderRadius.only(
              topLeft: Radius.circular(50),
              topRight: Radius.circular(50),
            )
          ),
          child:    Column(
            children: [
               FeaturedCardItems(
                 cartResponseModel:cartResponseModel ,
                 productsList:cartResponseModel.data!.products!.first ,
               ),
              SizedBox(height: 10.h,),
              const SelectedRadioWidget(),
              SizedBox(height: 10.h,),
               Row(
                 children: [
                   Expanded(
                     child: CustomButtonMyCart(
                      cartResponseModel: cartResponseModel,
                                   ),
                   ),
                 ],
               ),
            ],
          ),
        ),
      ],
    );
  }
}

