import 'package:comamarce/features/nav_bar_home/presentation/manager/home_category_cubit/home_category_cubit.dart';
import 'package:comamarce/features/nav_bar_home/presentation/manager/home_category_cubit/home_category_state.dart';
import 'package:comamarce/features/nav_bar_home/presentation/view/home_skeleton/home_skeleton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'category_grid_view_builder_wigdet.dart';

class BlocBuilderCategoryListView extends StatelessWidget {
  const BlocBuilderCategoryListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCategoryCubit, HomeCategoryState>(
      builder: (context, state) {
        return state.maybeWhen(
          homeCategoryLoading: (){
            return setupLoading();
          },
          homeCategorySuccess: (home){
            var homeList = home.data!;
            return  buildCategoryGridViewBuilderWidget(homeList);
          },
          homeCategoryError: (error){
            return const SizedBox.shrink();
          },
          orElse: () {
            return const SizedBox.shrink();
          },
        );
      },
    );
  }

  CategoryGridViewBuilderWidget buildCategoryGridViewBuilderWidget(homeList)
  => CategoryGridViewBuilderWidget(data: homeList ??[],);
  Widget setupLoading() => const Center(
      child: HomeSkeleton(),);

}
