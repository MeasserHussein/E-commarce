import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../../../../core/units/routing/app_routes.dart';
import '../../../../../../core/widgets/text_button.dart';
import '../../../../../../main.dart';
import '../../../../cart/presentation/views/another_my_cart_view/widgets/app_button_index_change.dart';
import '../../../../cart/presentation/views/my_cart_view/widgets/add_items_in_card.dart';
import '../../manager/cart_cubit/cart_cubit.dart';


class CounterItemShowDialog extends StatelessWidget {
  const CounterItemShowDialog({
    super.key,
    required this.widget,
    required this.cubit,
  });

  final AddItemsInCard widget;
  final CartCubit cubit;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
       // title: Text(widget.gridItemModel.title),
        content: BlocBuilder<CartCubit, CartState>(
          builder: (context, state) {
            return Column(
              crossAxisAlignment:
              CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  children: [
                    // const AppButtonIndexChange(
                    // ),
                    const Spacer(),
                    GestureDetector(
                        onTap: () {

                        },
                        child: const Icon(
                          Icons.delete,
                          color: Colors.red,
                        ))
                  ],
                ),
                // Text(
                //     'Price: ${cubit.index == 1 ? widget.gridItemModel.newPrice : cubit.total!}'),
                AppTextButton(
                  onPressed: () {
                    context.pop();
                  },
                  text: 'Submit',
                  textColor: Colors.black54,
                )
              ],
            );
          },
        ));
  }
}