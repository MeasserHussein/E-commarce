import 'package:comamarce/features/order_view/presentation/manager/cash_order_cubit/cash_order_cubit.dart';
import 'package:comamarce/features/order_view/presentation/manager/cash_order_cubit/cash_order_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/widgets/appbar_widget.dart';
import 'widgets/order_view_body.dart';

class OrderView extends StatelessWidget {
  const OrderView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(

          text: 'Order Details'
      ),
      body: const OrderViewBody()
    );
  }
}
