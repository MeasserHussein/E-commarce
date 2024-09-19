
import 'package:comamarce/features/home_view/presentation/views/widgets/cart_items.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:go_router/go_router.dart';
import '../../../../../core/units/routing/app_routes.dart';
import 'card_image_item.dart';

class CartWidget extends StatelessWidget {
  const CartWidget({
    super.key,
  });


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        context.push(AppRoute.detailsView, );
      },
      child: Card(
          elevation: 4,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),

          ),
          child: const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CardImageItem(),
                CardItems()
            ],
          )),
    );
  }
}