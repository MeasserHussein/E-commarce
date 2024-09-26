import 'package:comamarce/features/nav_bar_home/data/model/product_response_model/product_response.dart';
import 'package:flutter/material.dart';
import 'custom_draggable_scrollabe_sheet.dart';
import 'details_header_widget.dart';

class DetailsViewBody extends StatelessWidget {
  const DetailsViewBody({
    super.key, required this.data,

  });

  final ProductData data;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        DetailsHeaderWidget(data: data,),
         CustomDraggableScrollableSheet(data: data),
      ],
    );
  }
}