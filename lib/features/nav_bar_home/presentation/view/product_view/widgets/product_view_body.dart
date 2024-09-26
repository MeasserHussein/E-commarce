import 'package:comamarce/features/nav_bar_home/presentation/view/product_view/widgets/product_grid_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../data/model/product_response_model/product_response.dart';
import '../../../manager/product_cubit/add_to_cart_cubit/add_to_cart_cubit.dart';
import '../../../manager/product_cubit/add_to_cart_cubit/add_to_cart_state.dart';
import '../../category_and_brand_view/widgets/aliert_dialong_vontinus_shipping_or_go_to_cart.dart';

class ProductViewBody extends StatelessWidget {
  const ProductViewBody({super.key, required this.dataList});

  final List<ProductData?> dataList;
  @override
  Widget build(BuildContext context) {
    return  BlocConsumer<AddToCartCubit, AddToCartState>(
      listener: (context,state){
        if(state is AddSuccess){
          showDialog(context: context, builder: (context){
            return  const AliertDialongContinusShippingOrGoToCart();
          });
        }
      },
      builder: (context, state) {

        return ProductGridView(dataList: dataList,);
      },
    );
  }
}
