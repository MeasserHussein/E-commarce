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
// buildChoiceOptionList() {
//   List<ChoiceOptions>  sizedList = _productDetails!.choiceOptions!
//       .where((element) => element.options != 0)
//       .toList();
//   return ListView.builder(
//     itemCount: _productDetails!.choiceOptions!.length,
//     scrollDirection: Axis.vertical,
//     shrinkWrap: true,
//     padding: EdgeInsets.zero,
//     physics: NeverScrollableScrollPhysics(),
//     itemBuilder: (context, index) {
//       return Padding(
//         padding: const EdgeInsets.only(bottom: 8.0),
//         child: buildChoiceOpiton(_productDetails!.choiceOptions, index),
//       );
//     },
//   );
// }
//
// buildChoiceOpiton(choice_options, choice_options_index) {
//   return Padding(
//     padding: const EdgeInsets.fromLTRB(
//       0.0,
//       14.0,
//       0.0,
//       0.0,
//     ),
//     child: Row(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Padding(
//           padding: app_language_rtl.$!
//               ? EdgeInsets.only(left: 8.0)
//               : EdgeInsets.only(right: 8.0),
//           child: Container(
//             width: 75,
//             child: Text(
//               choice_options[choice_options_index].title,
//               style: TextStyle(color: Color.fromRGBO(153, 153, 153, 1)),
//             ),
//           ),
//         ),
//         Container(
//           width: MediaQuery.of(context).size.width - (107 + 45),
//           child: Scrollbar(
//             controller: _variantScrollController,
//             thumbVisibility: false,
//             child: Wrap(
//               children: List.generate(
//                   choice_options[choice_options_index].options.length,
//                       (index) => Padding(
//                       padding: const EdgeInsets.only(bottom: 8.0),
//                       child: Container(
//                         width: 75,
//                         padding: const EdgeInsets.only(bottom: 8.0),
//                         child: buildChoiceItem(
//                             choice_options[choice_options_index]
//                                 .options[index],
//                             choice_options_index,
//                             index),
//                       ))),
//             ),
//           ),
//         )
//       ],
//     ),
//   );
// }
// buildChoiceItem(option, choice_options_index, index) {
//   bool isActive=_selectedSizedIndex==index;
//
//   return Padding(
//     padding: app_language_rtl.$!
//         ? EdgeInsets.only(left: 8.0)
//         : EdgeInsets.only(right: 8.0),
//     child: InkWell(
//       onTap: () {
//         bool isActive;
//         setState(() {
//           changeSized(index);
//         });
//         print('***********************${index}');
//       },
//       child: Container(
//         decoration: BoxDecoration(
//           border: Border.all(
//               color: isActive?
//               MyTheme.accent_color : MyTheme.noColor,
//               width: 1.5),
//           borderRadius: BorderRadius.circular(3.0),
//           color: MyTheme.white,
//           boxShadow: [
//             BoxShadow(
//               color: Colors.black.withOpacity(0.12),
//               blurRadius: 6,
//               spreadRadius: 1,
//               offset: Offset(0.0, 3.0), // shadow direction: bottom right
//             )
//           ],
//         ),
//         child: Padding(
//           padding:
//           const EdgeInsets.symmetric(horizontal: 12.0, vertical: 3.0),
//           child: Center(
//             child: Text(
//               option,
//               style: TextStyle(
//                   color:isActive?  MyTheme.accent_color
//                       : Color.fromRGBO(224, 224, 225, 1),
//                   fontSize: 12.0,
//                   fontWeight: FontWeight.w600),
//             ),
//           ),
//         ),
//       ),
//     ),
//   );
// }

