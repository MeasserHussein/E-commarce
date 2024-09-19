import 'package:comamarce/core/units/app_colors.dart';
import 'package:comamarce/features/order_view/presentation/manager/cash_order_cubit/cash_order_cubit.dart';
import 'package:comamarce/features/order_view/presentation/manager/cash_order_cubit/cash_order_state.dart';
import 'package:comamarce/features/order_view/presentation/views/widgets/featured_list_view_older.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../data/model/chash_order_response/cash_order_response.dart';


class OrderListView extends StatelessWidget {
  const OrderListView({super.key,});


  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: BlocBuilder<CashOrderCubit, CashOrderState>(
        builder: (context, state) {
          if(state is OrderLoading){
            return const Center(child: CircularProgressIndicator(color: AppColors.primaryBlueColor,),);
          }else if(state is OrderSuccess){
            return ListView.builder(
              physics: const BouncingScrollPhysics(),
                itemCount: state.cashOrderResponse.length,
                itemBuilder: (context, index) {
                  return FeaturedListViewOrder(
                    cashOrderResponse: state.cashOrderResponse[index],
                  );
                });
          }else{
            return const Center(child: Text('error'),);
          }
        },
      ),
    );
  }
}




