

import 'package:comamarce/features/home/data/model/home_category_response.dart';
import 'package:comamarce/features/home/data/repo/category_item_repo/Category_item_repo.dart';
import 'package:comamarce/features/home/presentation/manager/category_items_cubit/category_items_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CategoryItemsCubit extends Cubit<CategoryItemsState> {
  CategoryItemsCubit(this._categoryItemRepo)
      : super(const CategoryItemsState.initial());

  final CategoryItemRepo _categoryItemRepo;


  void getCategoryItems(DataCategory id) async {
    emit(const CategoryItemsState.categoryItemsLoading());
    var response = await _categoryItemRepo.getCategoryItems(id.id!);
    response.when(success: (homeCategoryResponse) {
      emit(CategoryItemsState.categoryItemsSuccess(homeCategoryResponse));
    }, failure: (error) {
      emit(CategoryItemsState.categoryItemsError(
          error: error.failure.errors!.msg!));
    });
  }

}
