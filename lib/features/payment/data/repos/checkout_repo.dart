import 'package:comamarce/core/errors/error_handler.dart';
import 'package:comamarce/features/payment/data/payment_intent_input_model.dart';
import 'package:dartz/dartz.dart';


abstract class CheckoutRepo{
  Future<Either<ErrorHandler,void >> makePayment({
    required PaymentIntentInputModel paymentIntentInputModel
});
}