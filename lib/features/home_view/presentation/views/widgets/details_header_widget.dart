import 'package:comamarce/features/home/data/model/product_response_model/product_response.dart';
import 'package:flutter/material.dart';

import 'details_image_widget.dart';

class DetailsHeaderWidget extends StatelessWidget {
  const DetailsHeaderWidget({
    super.key, required this.data,
  });
final ProductData data;

  @override
  Widget build(BuildContext context) {
    return  DetailsImageWidget(data: data,);
  }
}