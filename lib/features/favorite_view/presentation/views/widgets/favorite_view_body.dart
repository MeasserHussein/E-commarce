import 'package:comamarce/core/units/app_colors.dart';
import 'package:comamarce/core/units/shared/helper/constant.dart';
import 'package:comamarce/core/units/styles.dart';
import 'package:comamarce/core/widgets/show_snack_bar.dart';
import 'package:comamarce/features/favorite_view/presentation/manager/favorite_cubit.dart';
import 'package:comamarce/features/favorite_view/presentation/manager/favorite_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../favorite_skeleton/favorite_skeleton_view.dart';
import 'favourite_list_view.dart';

class FavoriteViewBody extends StatelessWidget {
  const FavoriteViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.0.w),
      child: BlocBuilder<FavoriteCubit, FavoriteState>(
        builder: (context, state) {
          return state.maybeWhen(
            favoriteLoading: ()=>const FavoriteSkeletonView(),
            favoriteSuccess: (data){
              if(data.data!.isEmpty){
                return Center(
                  child: Text('No items yet',style: Styles.textStyle22.copyWith(
                      color: AppColors.primaryBlueColor
                  ),),
                );
              }else{
                return FavoriteListView(productResponse: data,);
              }
            },
            addFavoriteError: (error)=>Center(child: Text(error),),
            orElse: () => const SizedBox.shrink(),
          );
        },
      ),
    );
  }
}
