// import 'dart:developer';
//
// import 'package:comamarce/core/errors/feilure.dart';
// import 'package:comamarce/core/units/shared/helper/api_service.dart';
// import 'package:comamarce/features/authentication/data/models/route_login_model/RouteLoginModel.dart';
// import 'package:comamarce/features/authentication/data/repos/auth_repos.dart';
// import 'package:dartz/dartz.dart';
// import 'package:dio/dio.dart';
//
// import '../models/login_model/Login_model.dart';
//
// class AuthReposImpl extends AuthRepos {
//   final ApiService apiService;
//
//   AuthReposImpl(this.apiService);
//
//   @override
//   Future<Either<Failure, RouteLoginModel>> loginUser(
//       {required  email, required  password}) async {
//
//     try {
//       var data = await apiService.postData(
//         endPoint: '/api/v1/auth/signin',
//         data: {
//           'email': email,
//           'password': password,
//         },
//       );
//       log(data.toString(), name: 'dataMEasser');
//       return Right(
//           RouteLoginModel.fromJson(data)
//       );
//     } catch (e) {
//       if (e is DioException) {
//         return left(ServerFailure.fromDioError(e));
//       }
//       return left(ServerFailure(e.toString()));
//     }
//   }
//
//   @override
//   Future<Either<Failure, RouteLoginModel>> registerUser({required String email, required String firstName, required String password1, required String password2, required String phoneNumber})
//   async{
//     try {
//       var data = await apiService.postData(
//         // endPoint: '/api/auth/v1/register',
//         endPoint: '/api/v1/auth/signup',
//         data: {
//           'first_name': firstName,
//           'phone_number': phoneNumber,
//           'email': email,
//           'password1': password1,
//           'password2': password2,
//
//         },
//       );
//       return Right(
//         RouteLoginModel.fromJson(data),
//       );
//     } catch (e) {
//       if (e is DioException) {
//         return left(ServerFailure.fromDioError(e));
//       }
//       return left(ServerFailure(e.toString()));
//     }
//
//
//   }
//
//   @override
//   Future<Either<Failure, LoginModel>> verifyAccount({required String email, required String otp}) async{
//     try {
//       var data = await apiService.postData(
//         endPoint: '/api/auth/v1/verify-account',
//         data: {
//           'email': email,
//           'otp': otp,
//         },
//       );
//       log(data.toString(), name: 'dataMEasser');
//       return Right(
//           LoginModel.fromJson(data)
//       );
//     } catch (e) {
//       if (e is DioException) {
//         return left(ServerFailure.fromDioError(e));
//       }
//       return left(ServerFailure(e.toString()));
//     }
//   }
//
//
//
// }

import 'package:comamarce/core/errors/error_handler.dart';
import 'package:comamarce/core/units/shared/helper/api_result.dart';
import 'package:comamarce/core/units/shared/helper/api_service.dart';
import 'package:comamarce/features/authentication/data/models/login_model/login_request_body.dart';
import 'package:comamarce/features/authentication/data/models/login_model/login_response.dart';
import 'package:comamarce/features/authentication/data/models/signup_model/signup_request_body.dart';
import 'package:comamarce/features/authentication/data/models/signup_model/signup_response.dart';



class SignupRepo{
  final ApiService apiService;

  SignupRepo(this.apiService);

  Future<ApiResult<SignupResponse>> signup(SignupRequestBody user) async{
    try{
      var response = await apiService.signupUser(user);
      return ApiResult.success(response);
    }catch(error){
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }


}
