import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DesignAuthContainer extends StatelessWidget {
  const DesignAuthContainer({
    super.key,
    required this.widget,
    this.color=Colors.white,
  });

  final Color? color;
  final Widget widget;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400.w,
      padding: EdgeInsets.symmetric(horizontal: 10.w),
      decoration: BoxDecoration(
          color: color!.withOpacity(0.2),
          borderRadius: BorderRadius.circular(22.sp),
        border: Border.all(width: 1,color: Colors.black26),

      ),

      child: widget,
    );
  }
}
