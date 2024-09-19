import 'package:cached_network_image/cached_network_image.dart';
import 'package:comamarce/core/units/app_colors.dart';
import 'package:comamarce/features/home/data/model/home_category_response.dart';
import 'package:flutter/material.dart';

class BrandImages extends StatelessWidget {
  const BrandImages({super.key, required this.brandsResponse});

  final DataCategory brandsResponse;
  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      imageUrl: brandsResponse.image!,
      placeholder: (context,url)=>const Center(child: CircularProgressIndicator(color: AppColors.primaryBlueColor,),),
      errorWidget: (context,url,error)=>const Icon(Icons.error_outline,color: Colors.red,size: 35,),
    );
  }
}
