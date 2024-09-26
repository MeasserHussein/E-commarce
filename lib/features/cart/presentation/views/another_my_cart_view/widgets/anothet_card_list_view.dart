import 'package:comamarce/features/cart/presentation/data/model/cart_response_model.dart';
import 'package:comamarce/features/cart/presentation/views/another_my_cart_view/widgets/featured_another_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class AnotherCardListView extends StatelessWidget {
  const AnotherCardListView({super.key, required this.cartResponseModel});

  final CartResponseModel cartResponseModel;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
         itemCount: cartResponseModel.data!.products!.length,
        physics:const BouncingScrollPhysics(),
        itemBuilder: (context,index)=>  Padding(
          padding: EdgeInsets.symmetric(vertical: 5.w),
           child: FeaturedAnotherCard(productsList: cartResponseModel.data!.products![index],),
    ));
  }
}
