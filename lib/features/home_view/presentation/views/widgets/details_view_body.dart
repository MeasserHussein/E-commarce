import 'package:comamarce/features/home/data/model/product_response_model/product_response.dart';
import 'package:comamarce/features/home/presentation/manager/product_cubit/product_cubit.dart';
import 'package:comamarce/features/home/presentation/manager/product_cubit/product_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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