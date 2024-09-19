
import 'dart:core';

import 'package:comamarce/core/errors/error_handler.dart';
import 'package:comamarce/features/home/data/model/home_category_response.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_category_state.freezed.dart';

@freezed
class HomeCategoryState<T> with _$HomeCategoryState<T> {
  const factory HomeCategoryState.initial() = _Initial;

  const factory HomeCategoryState.homeCategoryLoading() = HomeCategoryLoading;

  const factory HomeCategoryState.homeCategorySuccess(HomeCategoryAndBrandsResponse homeCategoryResponse) = HomeCategorySuccess;

  const factory HomeCategoryState.homeCategoryError({required String error} ) =
  HomeCategoryError;

}