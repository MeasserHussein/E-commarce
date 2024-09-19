
import 'package:comamarce/features/payment/presentation/views/widgets/thank_you_body.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class ThankYouView extends StatelessWidget {
  const ThankYouView({super.key});
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
   body:  SafeArea(
     child:Transform.translate(
       offset: const Offset(0, -16),
         child: const ThankYouBody()) ,
   ),
    );
  }
}






