import 'package:comamarce/features/cart/presentation/data/model/cart_response_model.dart';
import 'package:comamarce/features/cart/presentation/views/manager/cart_cubit/cart_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../payment/presentation/views/widgets/order_info_item.dart';
import '../../../../../payment/presentation/views/widgets/total_price.dart';

class FeaturedCardItems extends StatelessWidget {
  const FeaturedCardItems({super.key, required this.cartResponseModel, required this.productsList,});


final CartResponseModel cartResponseModel;
final ProductsList productsList;
  @override
  Widget build(BuildContext context) {
    var cubit = context.read<CartItemCubit>();
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      child:   Column(
        children: [
          // OrderInfoItem(
          //   title: 'Order',
          //   value: '${(productsList.price!*productsList.count!).toInt()}',
          // ),
          const SizedBox(
            height: 3,
          ),
          const OrderInfoItem(
            title: 'Discount',
            value: '0',
          ),
          const SizedBox(
            height: 3,
          ),
          const OrderInfoItem(
            title: 'Shipping',
            value: '0',
          ),
          const Divider(
            thickness: 2,
            height: 34,
            color: Color(0xffC7C7C7),
          ),
          TotalPrice(
            title: 'Total',
            value: cartResponseModel.data!.totalCartPrice.toString(),
          ),
        ],
      ),
    );
  }
}
