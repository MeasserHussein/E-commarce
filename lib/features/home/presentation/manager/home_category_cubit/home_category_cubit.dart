import 'package:comamarce/core/errors/error_handler.dart';
import 'package:comamarce/features/home/data/repo/home_category_repo/home_category_repo.dart';
import 'package:comamarce/features/home/presentation/manager/home_category_cubit/home_category_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeCategoryCubit extends Cubit<HomeCategoryState> {
  HomeCategoryCubit(this._homeCategoryRepo)
      : super(const HomeCategoryState.initial());

  final HomeCategoryRepo _homeCategoryRepo;

  void getCategory() async {
    emit(const HomeCategoryState.homeCategoryLoading());
    var response = await _homeCategoryRepo.getCategory();
    response.when(success: (homeCategoryResponse){
      emit(HomeCategoryState.homeCategorySuccess(homeCategoryResponse));
    }, failure: (error){
      emit(      HomeCategoryState.homeCategoryError(error:error.failure.errors!.msg!));
    });
  }

  void getBrands() async {
    var response = await _homeCategoryRepo.getBrands();
    response.when(success: (homeCategoryResponse){
      emit(HomeCategoryState.homeCategorySuccess(homeCategoryResponse));
    }, failure: (error){
      emit(      HomeCategoryState.homeCategoryError(error:error.failure.errors!.msg!));
    });
  }
}
