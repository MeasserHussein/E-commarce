import 'package:comamarce/core/units/app_colors.dart';
import 'package:comamarce/core/units/routing/app_routes.dart';
import 'package:comamarce/core/units/styles.dart';
import 'package:comamarce/core/widgets/appbar_widget.dart';
import 'package:comamarce/features/cart/presentation/views/another_my_cart_view/widgets/another_card_view_body.dart';
import 'package:comamarce/features/cart/presentation/views/manager/cart_cubit/cart_cubit.dart';
import 'package:comamarce/features/cart/presentation/views/manager/cart_cubit/cart_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';


class AntherCardView extends StatelessWidget {
  const AntherCardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomAppBar(
          leading: GestureDetector(
            onTap: (){
              context.pop();
            },
              child: const Icon(Icons.arrow_back_outlined)),
          text: 'My Card',
        ),
        body: BlocBuilder<CartItemCubit, CartItemState>(
          builder: (context, state) {
            if(state is Loading){
              return const Center( child: CircularProgressIndicator(color: AppColors.primaryBlueColor,),);
            }
            else if(state is Success){
              if(state.cartResponseModel.data!.products!.isNotEmpty){
                return AnotherCardViewBody(cartResponseModel: state.cartResponseModel,);
              }
              else{
                 context.pushReplacement(AppRoute.home);
                return  Center( child: Text('No data yet',style:Styles.textStyle20.copyWith(
                    color: AppColors.primaryBlueColor
                ),),);
              }
            }else{
              return const Center( child: Text('error'),);
            }
          }
        ));
  }
}
