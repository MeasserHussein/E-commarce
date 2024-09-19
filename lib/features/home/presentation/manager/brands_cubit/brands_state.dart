
import 'dart:core';

import 'package:comamarce/features/home/data/model/home_category_response.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'brands_state.freezed.dart';

@freezed
class BrandsState<T> with _$BrandsState<T> {
  const factory BrandsState.initial() = _Initial;



  const factory BrandsState.brandsLoading() =BrandsLoading;

  const factory BrandsState.brandsSuccess(HomeCategoryAndBrandsResponse brandsResponse) =BrandsSuccess;

  const factory BrandsState.brandsError({required String error} ) =
  BrandsError;
}