import 'package:comamarce/features/dash_board_view/featured/views/widgets/all_expenses.dart';
import 'package:flutter/material.dart';

class TabletLayOut extends StatelessWidget {
  const TabletLayOut({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      physics: BouncingScrollPhysics(),
      slivers: [
        SliverToBoxAdapter(child: SizedBox(height: 16,),),
        SliverToBoxAdapter(child: AllExpenses()),

      ],
    );
  }
}

