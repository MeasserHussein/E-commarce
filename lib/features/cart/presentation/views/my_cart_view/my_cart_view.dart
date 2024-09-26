import 'package:comamarce/core/units/app_colors.dart';
import 'package:comamarce/core/units/routing/app_routes.dart';
import 'package:comamarce/core/units/styles.dart';
import 'package:comamarce/features/cart/presentation/data/model/cart_response_model.dart';
import 'package:comamarce/features/cart/presentation/views/manager/cart_cubit/cart_cubit.dart';
import 'package:comamarce/features/cart/presentation/views/manager/cart_cubit/cart_state.dart';
import 'package:comamarce/features/cart/presentation/views/my_cart_view/widgets/my_card_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import '../../../../../core/widgets/appbar_widget.dart';

class MyCartView extends StatelessWidget {
  const MyCartView({super.key,});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomAppBar(
leading: GestureDetector(
  onTap: (){
    context.pop();
  },
    child: Icon(Icons.arrow_back_rounded)),
          text: 'My Card',
        ),
        body: BlocBuilder<CartItemCubit, CartItemState>(
          builder: (context, state) {
            if(state is Loading){
              return const Center( child: CircularProgressIndicator(color: AppColors.primaryBlueColor,),);
            }
            else if(state is Success){
              if(state.cartResponseModel.data!.products!.isNotEmpty){
               return MyCartBody(cartResponseModel: state.cartResponseModel,);
              }
              else{
                return  Center( child: Text('No data yet',style:Styles.textStyle20.copyWith(
                  color: AppColors.primaryBlueColor
                ),),);
              }
            }else{
              return const Center( child: Text('error'),);
            }

          },
        )
    );
  }
}




