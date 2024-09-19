import 'package:comamarce/features/cart/presentation/data/model/cart_response_model.dart';
import 'package:comamarce/features/cart/presentation/views/my_cart_view/widgets/add_items_in_card.dart';
import 'package:comamarce/features/cart/presentation/views/my_cart_view/widgets/cart_item_list_view.dart';
import 'package:comamarce/features/cart/presentation/views/my_cart_view/widgets/custom_button.dart';
import 'package:comamarce/features/cart/presentation/views/my_cart_view/widgets/custom_button_navigation_to_another_card.dart';
import 'package:comamarce/features/cart/presentation/views/my_cart_view/widgets/featured_card_items.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


import 'selected_radio_widget.dart';

class MyCartBody extends StatelessWidget {
  const MyCartBody({
    super.key,
    required this.cartResponseModel,
  });

  final CartResponseModel cartResponseModel;

  // Function to handle radio button selection (with toggle off feature)
  @override
  Widget build(BuildContext context) {

    return Column(
      children: [
        const CustomButtonNavigationToAnotherCard(),
        SizedBox(
            height: 400.h,
            child: AddItemsInCard(cartResponseModel: cartResponseModel)),
        Expanded(
          child: CustomScrollView(
            slivers: [
              SliverToBoxAdapter(
                child: CartItemListView(
                    productItems: cartResponseModel.data!.products!),
              ),
              SliverToBoxAdapter(
                child: SizedBox(
                  height: 30.h,
                ),
              ),
              SliverToBoxAdapter(
                child: FeaturedCardItems(
                  cartResponseModel: cartResponseModel,
                  productsList: cartResponseModel.data!.products!.first,
                ),
              ),
              SliverToBoxAdapter(
                child: SizedBox(
                  height: 10.h,
                ),
              ),
              const SliverToBoxAdapter(
                  child:SelectedRadioWidget(),
              ),
              SliverFillRemaining(
                hasScrollBody: false,
                child: Padding(
                  padding:
                      EdgeInsets.only(bottom: 12.0.h, left: 20.w, right: 20.w),
                  child: Align(
                      alignment: Alignment.bottomCenter,
                      child: Row(
                        children: [
                          Expanded(
                            child: CustomButtonMyCart(
                              cartResponseModel: cartResponseModel,
                            ),
                          ),
                        ],
                      )),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}


