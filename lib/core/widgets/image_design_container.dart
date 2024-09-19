import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ImageDesignContainer extends StatelessWidget {
  const ImageDesignContainer({
    super.key, this.radius, this.height=75, this.width=75, required this.imageUrl,
  });

  final double? radius;
  final double? height;
  final double? width;
  final String imageUrl;


  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radius??25.sp),
        image:  DecorationImage(
          fit: BoxFit.contain,
          image: NetworkImage(imageUrl),
        ),
      ),
    );
  }
}