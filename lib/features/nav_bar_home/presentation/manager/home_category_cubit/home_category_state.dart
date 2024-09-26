
import 'dart:core';

import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../data/model/home_category_response.dart';

part 'home_category_state.freezed.dart';

@freezed
class HomeCategoryState<T> with _$HomeCategoryState<T> {
  const factory HomeCategoryState.initial() = _Initial;

  const factory HomeCategoryState.homeCategoryLoading() = HomeCategoryLoading;

  const factory HomeCategoryState.homeCategorySuccess(HomeCategoryAndBrandsResponse homeCategoryResponse) = HomeCategorySuccess;

  const factory HomeCategoryState.homeCategoryError({required String error} ) =
  HomeCategoryError;

}