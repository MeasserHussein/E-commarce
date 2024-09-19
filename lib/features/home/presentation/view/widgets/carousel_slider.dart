import 'package:comamarce/core/units/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class SliderShowImage extends StatelessWidget {
   SliderShowImage({super.key});


  List<String> images =[
    'assets/images/bnat.webp',
    'assets/images/computers.jpeg',
    'assets/images/professional.jpg',
  ];
  @override
  Widget build(BuildContext context) {
    return ImageSlideshow(
      /// Width of the [ImageSlideshow].
      width: double.infinity,
    
      /// Height of the [ImageSlideshow].
      height: 200,

      /// The page to show when first creating the [ImageSlideshow].
      initialPage: 0,
    
      /// The color to paint the indicator.
      indicatorColor: Colors.red,
    
      /// The color to paint behind th indicator.
      indicatorBackgroundColor: Colors.amber,
      indicatorBottomPadding: 18.h,
      /// Auto scroll interval.
      /// Do not auto scroll with null or 0.
      autoPlayInterval: 3000,
      indicatorRadius: 4,

    
      /// Loops back to first slide.
      isLoop: true,
    
      /// The widgets to display in the [ImageSlideshow].
      /// Add the sample image file into the images folder
      children: images.map((e) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              image: DecorationImage(
                image: AssetImage(e),
                fit: BoxFit.fill,
              )
            ),

          ),
        );
      }).toList(),
    );
  }
}
