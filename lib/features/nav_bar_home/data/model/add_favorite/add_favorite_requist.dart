
import 'package:json_annotation/json_annotation.dart';

part 'add_favorite_requist.g.dart';
@JsonSerializable()
class AddFavoriteRequest{
  final String? productId;


  AddFavoriteRequest({required this.productId});


  Map<String,dynamic> toJson()=>_$AddFavoriteRequestToJson(this);
}