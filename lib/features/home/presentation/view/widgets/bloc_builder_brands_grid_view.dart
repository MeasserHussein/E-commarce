import 'package:comamarce/core/units/app_colors.dart';
import 'package:comamarce/core/units/shared/helper/constant.dart';
import 'package:comamarce/features/authentication/presentation/manager/cubit/login_cubit.dart';
import 'package:comamarce/features/home/presentation/manager/brands_cubit/brands_cubit.dart';
import 'package:comamarce/features/home/presentation/manager/brands_cubit/brands_state.dart';
import 'package:comamarce/features/home/presentation/view/widgets/brand_grid_view_biulder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BlocBuilderBrandsGridView extends StatelessWidget {
  const BlocBuilderBrandsGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BrandsCubit, BrandsState>(
      builder: (context, state) {
        return state.maybeWhen(
         // brandsLoading: ()=>const Center(child: CircularProgressIndicator(color: AppColors.primaryBlueColor,),),
            brandsSuccess: ( brand){
              context.read<LoginCubit>().getToken(SharedPrefKeys.userToken);
            var brandsList = brand.data!;
            return  BrandGridViewBuilder(
              imagesBrand:brandsList,
            );
            },
            orElse: ()=>const SizedBox.shrink(),
        );
      },
    );
  }
}