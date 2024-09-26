
import 'package:freezed_annotation/freezed_annotation.dart';
part 'add_product_request.g.dart';
@JsonSerializable()
class AddProductRequest{
  final String? productId;

  AddProductRequest({required this.productId});

  Map<String,dynamic> toJson() => _$AddProductRequestToJson(this);
}