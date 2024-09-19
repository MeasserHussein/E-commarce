import 'package:flutter/material.dart';

class DiscountViewWidget extends StatelessWidget {
  const DiscountViewWidget({
    super.key,

  });



  @override
  Widget build(BuildContext context) {
    return Text('55',style: TextStyle(
        decoration: TextDecoration.lineThrough,
      color: Colors.grey[400]
    ),);
  }
}