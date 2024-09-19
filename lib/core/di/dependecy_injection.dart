
import 'package:comamarce/core/units/dio_factory.dart';
import 'package:comamarce/core/units/shared/helper/api_service.dart';
import 'package:comamarce/features/authentication/data/repos/change_password_repo.dart';
import 'package:comamarce/features/authentication/data/repos/forget_password_repo.dart';
import 'package:comamarce/features/authentication/data/repos/otp_repo.dart';
import 'package:comamarce/features/authentication/data/repos/signup_repo.dart';
import 'package:comamarce/features/authentication/presentation/manager/change_password/change_password_cubit.dart';
import 'package:comamarce/features/authentication/presentation/manager/cubit/login_cubit.dart';
import 'package:comamarce/features/authentication/presentation/manager/forget_password_cubit/forget_password_cubit.dart';
import 'package:comamarce/features/authentication/presentation/manager/otp_cubit/otp_code_cubit.dart';
import 'package:comamarce/features/authentication/presentation/manager/signup_cubit/signup_cubit.dart';
import 'package:comamarce/features/cart/presentation/data/repo/cart_repo.dart';
import 'package:comamarce/features/order_view/data/repo/cash_oreder_repo.dart';
import 'package:comamarce/features/favorite_view/data/repo/favorite_repo.dart';
import 'package:comamarce/features/home/data/repo/category_item_repo/Category_item_repo.dart';
import 'package:comamarce/features/home/data/repo/home_category_repo/home_category_repo.dart';
import 'package:comamarce/features/home/data/repo/product_repo/product_repo.dart';
import 'package:comamarce/features/home/presentation/manager/product_cubit/add_to_cart_cubit/add_to_cart_cubit.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

import '../../features/authentication/data/repos/login_repo.dart';

final getIt =GetIt.instance;

Future<void> setupGetIt() async{
  Dio dio = DioFactory.getDio();
  getIt.registerLazySingleton<ApiService>(()=>ApiService(dio));

  //login
  getIt.registerLazySingleton<LoginRepo>(()=>LoginRepo(getIt()));
  getIt.registerFactory<LoginCubit>(()=>LoginCubit(getIt()));
//signup
  getIt.registerLazySingleton<SignupRepo>(()=>SignupRepo(getIt()));
  getIt.registerFactory<SignupCubit>(()=>SignupCubit(getIt()));

  //forgetPassword
  getIt.registerLazySingleton<ForgetPasswordRepo>(()=>ForgetPasswordRepo(getIt()));
  getIt.registerFactory<ForgetPasswordCubit>(()=>ForgetPasswordCubit(getIt()));

  //reset password
  getIt.registerLazySingleton<OtpRepo>(()=>OtpRepo(getIt()));
  getIt.registerFactory<OtpCodeCubit>(()=>OtpCodeCubit(getIt()));

  //change password
  getIt.registerLazySingleton<ChangePasswordRepo>(()=>ChangePasswordRepo(getIt()));
  getIt.registerFactory<ChangePasswordCubit>(()=>ChangePasswordCubit(getIt()));

  //home category
  getIt.registerLazySingleton<HomeCategoryRepo>(()=>HomeCategoryRepo(getIt()));

  //product
  getIt.registerLazySingleton<ProductRepo>(()=>ProductRepo(getIt()));


  //category items
  getIt.registerLazySingleton<CategoryItemRepo>(()=>CategoryItemRepo(getIt()));


  //cart
  getIt.registerLazySingleton<CartRepo>(()=>CartRepo(getIt()));


  //add to cart
  getIt.registerLazySingleton<AddToCartCubit>(()=>AddToCartCubit(getIt()));

  //cash order
  getIt.registerLazySingleton<CashOrderRepo>(()=>CashOrderRepo(getIt()));


//favorite
  getIt.registerLazySingleton<FavoriteRepo>(()=>FavoriteRepo(getIt()));


}