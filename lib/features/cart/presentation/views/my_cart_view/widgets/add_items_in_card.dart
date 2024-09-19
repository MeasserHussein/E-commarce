import 'dart:math';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:comamarce/core/di/dependecy_injection.dart';
import 'package:comamarce/features/cart/presentation/data/model/cart_response_model.dart';
import 'package:comamarce/features/cart/presentation/views/manager/cart_cubit/cart_cubit.dart';
import 'package:comamarce/features/cart/presentation/views/my_cart_view/widgets/show_item_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_skeleton_ui/flutter_skeleton_ui.dart';

class AddItemsInCard extends StatefulWidget {
  final CartResponseModel cartResponseModel;

  const AddItemsInCard({
    super.key,
    required this.cartResponseModel,
  });

  @override
  State<AddItemsInCard> createState() =>
      _AddItemsInCardState(cartResponseModel);
}

class _AddItemsInCardState extends State<AddItemsInCard> {
  late List<Offset> imagePositions;

  final double containerWidth = 250.w; // Width of the container
  final double containerHeight = 350.h; // Height of the container
  final double imageSize = 60; // Size of the images
  final CartResponseModel cart;

  _AddItemsInCardState(this.cart);

  @override
  void initState() {
    super.initState();
    final random = Random();

    final products = cart.data?.products ?? [];

    imagePositions = List.generate(
      products.length,
      (index) => Offset(
        random.nextDouble() * (containerWidth - imageSize),
        random.nextDouble() * (containerHeight - imageSize),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final products = cart.data?.products ?? [];
    return Scaffold(
      body: Center(
        child: Container(
          width: containerWidth,
          height: containerHeight,
          clipBehavior: Clip.antiAliasWithSaveLayer,
          decoration: BoxDecoration(
              color: Colors.grey[300],
              image: const DecorationImage(
                  image: AssetImage('assets/images/basket.png'),
                  fit: BoxFit.fill)),
          child: Stack(
            children: List.generate(products.length, (index) {
              return Positioned(
                left: imagePositions[index].dx,
                top: imagePositions[index].dy,
                child: GestureDetector(
                  onPanUpdate: (details) {
                    setState(() {
                      final newX = imagePositions[index].dx + details.delta.dx;
                      final newY = imagePositions[index].dy + details.delta.dy;

                      imagePositions[index] = Offset(
                        newX.clamp(0.0.w, containerWidth - imageSize.w),
                        newY.clamp(5.h, containerHeight - imageSize - 5.h),
                      );
                    });
                  },
                  child: Container(
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    width: imageSize.w,
                    height: imageSize.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child:ShowItemCard(
                      imageSize: imageSize,
                      productList: widget.cartResponseModel.data!.products![index],
                    )
                  ),
                ),
              );
            }),
          ),
        ),
      ),
    );
  }
}
