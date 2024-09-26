
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../data/model/home_category_response.dart';
import '../../../data/repo/category_item_repo/Category_item_repo.dart';
import 'category_items_state.dart';

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
