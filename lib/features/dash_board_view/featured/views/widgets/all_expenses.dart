import 'package:comamarce/core/units/styles.dart';
import 'package:comamarce/features/dash_board_view/featured/views/widgets/all_expenses_items.dart';
import 'package:flutter/material.dart';

class AllExpenses extends StatelessWidget {
  const AllExpenses({super.key, this.color});

  final Color? color;
  @override
  Widget build(BuildContext context) {
    return  Container(
      padding:const EdgeInsets.all(20),
      decoration: ShapeDecoration(
        color: Colors.white,
       shape: RoundedRectangleBorder(
         borderRadius: BorderRadius.circular(8),
       )

      ),
      child:const Column(
        children: [
          AllExpensesHeader(),
          AllExpensesItems()
        ],
      ) ,
    );
  }
}

class AllExpensesHeader extends StatelessWidget {
  const AllExpensesHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        Text('All Expenses',style: Styles.textStyle20.copyWith(
          fontWeight: FontWeight.bold
        ),),
        const Spacer(),
        Container(
          padding: const EdgeInsets.all(12),
          decoration: ShapeDecoration(
            color: Colors.white,
            shape: RoundedRectangleBorder(
              side: const BorderSide(width: 1,color: Color(0xFFF1F1F1)),
              borderRadius: BorderRadius.circular(12)
            )
          ),
          child:  Row(
            children: [
              Text('Monthly',style: Styles.textStyle16,),
              const Icon(Icons.keyboard_arrow_down_outlined),
            ],
          ),
        )
      ],
    );
  }
}