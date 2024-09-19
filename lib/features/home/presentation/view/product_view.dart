import 'package:comamarce/core/units/app_colors.dart';
import 'package:comamarce/core/units/routing/app_routes.dart';
import 'package:comamarce/core/units/styles.dart';
import 'package:comamarce/features/home/data/model/product_response_model/product_response.dart';
import 'package:comamarce/features/home/presentation/manager/product_cubit/add_to_cart_cubit/add_to_cart_cubit.dart';
import 'package:comamarce/features/home/presentation/manager/product_cubit/add_to_cart_cubit/add_to_cart_state.dart';
import 'package:comamarce/features/home/presentation/view/widgets/search_and_cart_icon.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import 'product_widgets/product_cart_view.dart';

class ProductView extends StatelessWidget {
  const ProductView({super.key, required this.dataList,});

  final List<ProductData?> dataList;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  const SearchAndCartIcon(),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 5),
        child: BlocConsumer<AddToCartCubit, AddToCartState>(
          listener: (context,state){
            if(state is AddSuccess){
               showDialog(context: context, builder: (context){
                 return  const AliertDialongContinusShippingOrGoToCart();
               });
            }
          },
          builder: (context, state) {

          return GridView.builder(
            physics: const BouncingScrollPhysics(),
            itemCount: dataList.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 10.h,
                crossAxisSpacing: 5.w,
                mainAxisExtent: 300.h
            ),
            itemBuilder:
                (context, index) {
                 return ProductCartView(
                    data: dataList[index]!,
                  );
                }

          );
          },
        ),
      ),
    );
  }
}

class AliertDialongContinusShippingOrGoToCart extends StatelessWidget {
  const AliertDialongContinusShippingOrGoToCart({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.white,
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset('assets/images/thinking.webp'),
          SizedBox(height: 50.h,),
          TextButton(
            style: TextButton.styleFrom(
              minimumSize: const Size(double.infinity, 60),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50)
              ),
              backgroundColor: AppColors.primaryBlueColor,
              side: const BorderSide(width: 2),
              padding: const EdgeInsets.all(20)
            ),
              onPressed: (){
              context.push(AppRoute.myCart);
              context.pop();
              }, child: Text('Go To Cart',style: Styles.textStyle20.copyWith(
            color: Colors.white,
          ),)),
          SizedBox(height: 10.h,),
          TextButton(
            style: TextButton.styleFrom(
              backgroundColor: Colors.white,
              padding: const EdgeInsets.all(20)
            ),
              onPressed: (){
              context.pop();
              }, child: Text('continue shopping',style: Styles.textStyle20.copyWith(
            color: Colors.grey,
          ),)),
        ],
      ),
    );
  }
}
