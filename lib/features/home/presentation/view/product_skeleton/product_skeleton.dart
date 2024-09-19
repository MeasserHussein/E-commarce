import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'widgets/skeleton_view_body.dart';

class ProductSkeleton extends StatelessWidget {
  const ProductSkeleton({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body:const SkeletonViewBody() ,
    );
  }
}




