
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_skeleton_ui/flutter_skeleton_ui.dart';



class HomeSkeleton extends StatelessWidget {
  const HomeSkeleton({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Skeleton(
          isLoading: true,
          skeleton:SkeletonHomeListView(),
          child:SizedBox.shrink() ,
        ),
      ),
    );
  }
}


class SkeletonHomeListView extends StatelessWidget {
  const SkeletonHomeListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: 16.w,),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 50.h,),
          Row(
            children: [

              Expanded(
                child: Container(
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(16.sp),
                  ),
                ),
              ),
              SizedBox(width: 10.w,),
              Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(50.sp),
                ),
              ),
            ],
          ),
          SizedBox(height: 10.h,),
          Container(
            height: 200,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.circular(25.sp),
            ),
          ),
          SizedBox(height: 25.h,),
          Container(
            height: 20,
            width: 150,
            decoration: BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.circular(15.sp),
            ),
          ),
          SizedBox(height: 15.h,),
          SizedBox(
            height: 200.h,
            child: GridView.builder(
              physics: const NeverScrollableScrollPhysics(),
              itemCount: 50,
                scrollDirection: Axis.horizontal,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2
                ),
                itemBuilder: (context,index)=> Column(
                  children: [
                    Container(
                      width: 70.w,
                      height: 70.h,
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(50.sp),
                      ),
                    ),
                    SizedBox(height: 10.h,),
                    Container(
                      height: 10,
                      width: 70,
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(25.sp),
                      ),
                    ),
                  ],
                ),
            ),
          )
        ],
      ),
    );
  }
}