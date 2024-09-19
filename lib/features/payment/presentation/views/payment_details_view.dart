
import 'package:comamarce/features/payment/presentation/views/widgets/payment_details_body.dart';
import 'package:flutter/material.dart';
import '../../../../core/units/styles.dart';

class PaymentDetailsView extends StatelessWidget {
  const PaymentDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  Text(
          'Payment Details',
          style: Styles.textStyle24w600,
        ),
      ),
      body: const PaymentDetailsBody(),
    );
  }
}








