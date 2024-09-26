
import 'package:json_annotation/json_annotation.dart';
part 'cash_order_request.g.dart';
@JsonSerializable()
class CashOrderRequest{
  @JsonKey(name: 'details')
 final String address;
 final String phone;
 final String city;

  CashOrderRequest({required this.address, required this.phone, required this.city});

  Map<String,dynamic> toJson()=> _$CashOrderRequestToJson(this);
}