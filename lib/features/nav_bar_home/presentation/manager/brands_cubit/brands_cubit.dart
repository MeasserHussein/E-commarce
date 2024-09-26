

import 'package:comamarce/features/nav_bar_home/presentation/manager/brands_cubit/brands_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../data/repo/home_category_repo/home_category_repo.dart';

class BrandsCubit extends Cubit<BrandsState> {
  BrandsCubit(this._brandsRepo) : super(const BrandsState.initial());

final HomeCategoryRepo _brandsRepo;

  void getBrands() async {
    //emit(const BrandsState.brandsLoading());
    var response = await _brandsRepo.getBrands();
    response.when(success: (homeCategoryResponse){
      emit(BrandsState.brandsSuccess(homeCategoryResponse));
    }, failure: (error){
      emit(      BrandsState.brandsError(error:error.failure.errors!.msg!));
    });
  }
}
