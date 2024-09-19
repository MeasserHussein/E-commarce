import 'package:comamarce/features/authentication/data/models/change_new_password/change_new_password_request_body.dart';
import 'package:comamarce/features/authentication/data/models/change_new_password/change_new_password_response.dart';
import 'package:comamarce/features/authentication/data/models/forget_password_model/forget_password_request.dart';
import 'package:comamarce/features/authentication/data/models/forget_password_model/forget_password_response.dart';
import 'package:comamarce/features/authentication/data/models/login_model/login_request_body.dart';
import 'package:comamarce/features/authentication/data/models/login_model/login_response.dart';
import 'package:comamarce/features/authentication/data/models/otp_code_model/otp_code_request_body.dart';
import 'package:comamarce/features/authentication/data/models/otp_code_model/otp_response.dart';
import 'package:comamarce/features/authentication/data/models/signup_model/signup_request_body.dart';
import 'package:comamarce/features/authentication/data/models/signup_model/signup_response.dart';
import 'package:comamarce/features/authentication/data/models/verify_token/verify_token_response.dart';
import 'package:comamarce/features/cart/presentation/data/model/cart_response_model.dart';
import 'package:comamarce/features/cart/presentation/data/model/cart_update_id_response.dart';
import 'package:comamarce/features/favorite_view/data/model/add_favorite/add_favorite_requist.dart';
import 'package:comamarce/features/favorite_view/data/model/add_favorite/add_favourite_response.dart';
import 'package:comamarce/features/home/data/model/add_product_to_cart_response/add_product_request.dart';
import 'package:comamarce/features/home/data/model/add_product_to_cart_response/add_product_to_cart_response.dart';
import 'package:comamarce/features/home/data/model/home_category_response.dart';
import 'package:comamarce/features/home/data/model/product_response_model/product_response.dart';
import 'package:comamarce/features/order_view/data/model/chash_order_response/cash_order_request.dart';
import 'package:comamarce/features/order_view/data/model/chash_order_response/cash_order_response.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';
import 'package:retrofit/retrofit.dart';
import 'package:talker_dio_logger/talker_dio_logger_interceptor.dart';

part 'api_service.g.dart';

@RestApi(baseUrl: 'https://ecommerce.routemisr.com/api/v1/')
abstract class ApiService {


  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;

  @POST('auth/signin')
  Future<LoginResponse> loginUser(@Body() LoginRequestBody login);

  @POST('auth/signup')
  Future<SignupResponse> signupUser(@Body()  SignupRequestBody register,);

  @POST('auth/forgotPasswords')
  Future<ForgetPasswordResponse> forgetPassword(@Body()  ForgetPasswordRequest forgetPassword,);
  @POST('auth/verifyResetCode')
  Future<OtpResposne> otpCode(@Body()  OtpCodeRequestBody otpCodeRequestBody,);

  @PUT('auth/resetPassword')
  Future<ChangeNewPasswordResponse> resetPassword(@Body() ChangeNewPasswordRequestBody changePassword,);

  @GET('auth/verifyToken')
  Future<VerifyTokenResponse> getToken(@Header('token')String token);

  @GET('categories')
  Future<HomeCategoryAndBrandsResponse> getCategories();
  @GET('brands')
  Future<HomeCategoryAndBrandsResponse> getBrands();
  @GET('products')
  Future<ProductResponse> getProducts();

  @GET('categories/{id}/subcategories')
  Future<HomeCategoryAndBrandsResponse> getCategoryItem(@Path("id")String id);

  @GET('cart')
  Future<CartResponseModel> getCart(@Header('token')String token );

  @POST('cart')
  Future<AddProductToCartResponse> addProductToCart(@Header('token')String token,@Body()AddProductRequest addProduct );
  @PUT('cart/{id}')
  Future<CartResponseModel> updateCartProduct(@Header('token')String token,@Path('id') String productId ,@Body() CartUpdateIdRequest count );

  @DELETE('cart/{id}')
  Future<CartResponseModel> deleteCartProduct(@Header('token')String token,@Path('id') String productId ,);
  @GET('wishlist')
  Future<ProductResponse> getFavorite(@Header('token')String token );

  @POST('wishlist')
  Future<AddAndRemoveFavouriteResponse> addFavorite(@Header('token')String token,@Body()AddFavoriteRequest addFavoriteRequest );

  @DELETE('wishlist/{id}')
  Future<AddAndRemoveFavouriteResponse> removeFavorite(@Header('token')String token,@Path('id')String id);

  @POST('orders/{id}')
  Future<CashOrderResponse> postAddress(@Path('id')String cartId,@Header('token')String token,@Body()CashOrderRequest cashOrderRequest );

  @GET('orders/user/{id}')
  Future<List<CashOrderResponse>> getOrders(@Path('id')String id);
}

// @RestApi(baseUrl: 'https://ecommerce.routemisr.com')
// abstract class StripeService{
//   factory StripeService(Dio dio, {String baseUrl}) = _StripeService;




// final _baseUrl='';
// final  Dio dio=Dio();
// Future<Map<String,dynamic>> postData ({required String endPoint,required  data,String? token})async{
//   var response=await dio.post(
//       '$_baseUrl$endPoint',
//       data: data,
//       options: Options(
//           headers: {
//             'Authorization': 'Bearer Token $token'
//           }
//       )
//   );
//
//   return response.data;
// }
// Future<Map<String,dynamic>> getData ({required String endPoint,String? token})async{
//   dio.interceptors.addAll([
//     TalkerDioLogger(),
//   ]);
//   Response response =await dio .get(
//       '$_baseUrl$endPoint',
//       options: Options(
//           headers: {
//             'Authorization': 'Bearer Token $token'
//           }
//       )
//   );
//   return response.data;
// }
//
// Future<Response> stripePost ({Map<String,String>?headers,required String url,required  data,required String token,String? contentType})async{
//   var response=await dio.post(
//     url,
//     data: data,
//     options: Options(
//       // contentType: Headers.formUrlEncodedContentType,
//       headers: headers?? {
//         'Authorization':"Bearer $token"
//       },
//     ),
//   );
//
//   return response;
// }
//

