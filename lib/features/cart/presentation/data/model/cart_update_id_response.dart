
import 'package:json_annotation/json_annotation.dart';

part 'cart_update_id_response.g.dart';
@JsonSerializable()
class CartUpdateIdRequest{

  final int count;

  CartUpdateIdRequest({required this.count});

  Map<String,dynamic> toJson ()=>_$CartUpdateIdRequestToJson(this);
}