
import 'dart:core';

import 'package:comamarce/features/home/data/model/home_category_response.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'category_items_state.freezed.dart';

@freezed
class CategoryItemsState<T> with _$CategoryItemsState<T> {
  const factory CategoryItemsState.initial() = _Initial;



  const factory CategoryItemsState.categoryItemsLoading() =CategoryItemLoading;

  const factory CategoryItemsState.categoryItemsSuccess(HomeCategoryAndBrandsResponse categoryItems) =CategoryItemSuccess;

  const factory CategoryItemsState.categoryItemsError({required String error} ) =
  CategoryItemError;
}