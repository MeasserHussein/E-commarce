import 'package:flutter/material.dart';

class AllExpensesItems extends StatelessWidget {
  const AllExpensesItems({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 16),
      decoration:ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          side: const BorderSide(width: 1,color: Color(0xFFF1F1F1)),
          borderRadius: BorderRadius.circular(12)
        )
      ),
      child: const Column(
        children: [
          Row(
            children: [
              Expanded(child: AllExpensesItemHeader(icon: Icons.wallet_giftcard_outlined,)),
              SizedBox(width: 10,),
              Expanded(child: AllExpensesItemHeader(icon: Icons.wallet_giftcard_outlined,)),
              SizedBox(width: 10,),
              Expanded(child: AllExpensesItemHeader(icon: Icons.wallet_giftcard_outlined,)),
            ],
          )
        ],
      ),
    );
  }
}
class AllExpensesItemHeader extends StatelessWidget {
  const AllExpensesItemHeader({super.key, required this.icon});

  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        CircleAvatar(
          backgroundColor: Colors.grey[300],
          radius:50,
            child: Icon(icon,size: 35,)),
        const Spacer(),
        const Icon(Icons.arrow_forward_ios_outlined,)
      ],
    );
  }
}


