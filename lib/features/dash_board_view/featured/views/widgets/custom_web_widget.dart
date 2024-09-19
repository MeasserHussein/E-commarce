import 'package:comamarce/features/dash_board_view/featured/views/widgets/all_expenses.dart';
import 'package:flutter/material.dart';

import 'all_expenses_items.dart';

class CustomWebWidget extends StatelessWidget {
  const CustomWebWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  const Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: Column(
        children: [
          Expanded(flex: 2,
              child: SizedBox()),
          SizedBox(height: 16,),
          Expanded(child:SizedBox()),
        ],
      ),
    );
  }
}