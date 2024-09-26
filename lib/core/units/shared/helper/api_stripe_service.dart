import 'package:dio/dio.dart';
import 'package:talker_dio_logger/talker_dio_logger.dart';

class ApiStripeService{
  final Dio dio =Dio();

  Future<Response> stripePost ({Map<String,String>?headers,required String url,required  data,required String token,String? contentType})async{
    var response=await dio.post(
      url,
      data: data,
      options: Options(
         contentType: Headers.formUrlEncodedContentType,
        headers: headers?? {
          'Authorization':"Bearer $token"
        },
      ),
    );

    return response;
  }

}