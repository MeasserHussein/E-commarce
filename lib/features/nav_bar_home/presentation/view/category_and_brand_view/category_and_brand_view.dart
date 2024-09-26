
import 'package:comamarce/core/units/app_colors.dart';
import 'package:comamarce/core/units/styles.dart';
import 'package:comamarce/features/nav_bar_home/presentation/manager/home_category_cubit/home_category_cubit.dart';
import 'package:comamarce/features/nav_bar_home/presentation/manager/home_category_cubit/home_category_state.dart';
import 'package:comamarce/features/nav_bar_home/presentation/view/category_and_brand_view/widgets/bloc_builder_brands_grid_view.dart';
import 'package:comamarce/features/nav_bar_home/presentation/view/category_and_brand_view/widgets/carousel_slider.dart';
import 'package:comamarce/features/nav_bar_home/presentation/view/category_and_brand_view/widgets/category_and_view_all.dart';
import 'package:comamarce/features/nav_bar_home/presentation/view/category_and_brand_view/widgets/category_grid_view_builder_wigdet.dart';
import 'package:comamarce/features/nav_bar_home/presentation/view/category_and_brand_view/widgets/search_and_cart_icon.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../home_skeleton/home_skeleton.dart';


class CategoryAndBrandView extends StatelessWidget {
  const CategoryAndBrandView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: BlocBuilder<HomeCategoryCubit, HomeCategoryState>(
          builder: (context, state) {
            return state.maybeWhen(
              homeCategoryLoading: ()=>const HomeSkeleton(),
              homeCategorySuccess: (home){
                return  Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.w,vertical: 16.h),
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding:  EdgeInsets.only(right: 20.w),
                          child: const SearchAndCartIcon(),
                        ),
                        SizedBox(height: 16.h,),
                        SliderShowImage(),
                        SizedBox(height: 24.h,),
                        const CategoryAndViewAll(),
                         CategoryGridViewBuilderWidget(data: home.data!,),
                        SizedBox(height: 16.h,),
                        Text('Brands', style: Styles.textStyle20.copyWith(
                            color: AppColors.primaryBlueColor,
                            fontWeight: FontWeight.bold
                        ),),
                        SizedBox(height: 24.h,),
                        const BlocBuilderBrandsGridView(),
                      ],
                    ),
                  ),
                );
              },
              orElse: () => const SizedBox.shrink(),
            );
          },
        ),
      ),
    );
  }
}
