import 'package:comamarce/core/units/app_colors.dart';
import 'package:comamarce/core/units/constant.dart';
import 'package:comamarce/core/units/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ColorsAndSizeListView extends StatefulWidget {
  const ColorsAndSizeListView({super.key ,});

  @override
  State<ColorsAndSizeListView> createState() => _ColorsAndSizeListViewState();
}

class _ColorsAndSizeListViewState extends State<ColorsAndSizeListView> {
int currentIndex=0;

int currentIndexSize=0;

  @override
  Widget build(BuildContext context) {
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Color',style: Styles.textStyle20.copyWith(
            color: AppColors.primaryBlueColor,
            fontWeight: FontWeight.w600
        ),),
        SizedBox(height: 10.h,),
        SizedBox(
          height: 40.h,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: colors.length,
            itemBuilder: (context,index)=> Padding(
              padding:  EdgeInsets.only(right: 8.0.w),
              child: GestureDetector(
                onTap: (){
                  setState(() {
                    currentIndex = index ;
                  });
                },
                child: ColorItem(
                  isActiveColor: currentIndex == index,
                  colors: colors[index],
                ),
              ),
            ),
          ),
        ),
        SizedBox(height: 20.h,),
        Text('Size',style: Styles.textStyle20.copyWith(
            color: AppColors.primaryBlueColor,
            fontWeight: FontWeight.w600
        ),),
        SizedBox(height: 10.h,),
        SizedBox(
          height: 40.h,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: size.length,
            itemBuilder: (context,index)=> Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: GestureDetector(
                onTap: (){
                  setState(() {
                    currentIndexSize=index;
                  });
                },
                child: SizeItem(
                  isActiveSize: currentIndexSize==index,
                  text: size[index].toString(),
                ),
              ),
            ),
          ),
        )

      ],
    );
  }
}

class SizeItem extends StatelessWidget {
  const SizeItem({
    super.key, required this.text, required this.isActiveSize,
  });
      final String text;
  final bool isActiveSize;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 20.sp,
      backgroundColor:isActiveSize? Colors.blue :Colors.white,
      child: Text(text),
    );
  }
}

class ColorItem extends StatelessWidget {
  const ColorItem({
    super.key, required this.colors, required this.isActiveColor,
  });
final Color colors;
  final bool isActiveColor;

  @override
  Widget build(BuildContext context) {
    return isActiveColor ?  CircleAvatar(
      backgroundColor: Colors.amber,
      radius: 20.sp,
      child: CircleAvatar(
        radius: 18.sp,
        backgroundColor: colors,
        child: const Icon(Icons.done_outlined,color: Colors.white,),
      ),
    ) : CircleAvatar(
      radius: 20.sp,
      backgroundColor: colors,
    );
  }
}
