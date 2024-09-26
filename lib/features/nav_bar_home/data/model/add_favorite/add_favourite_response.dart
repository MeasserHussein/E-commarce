
import 'package:json_annotation/json_annotation.dart';

part 'add_favourite_response.g.dart';
@JsonSerializable()
class  AddAndRemoveFavouriteResponse{
  final String status;
  final String message ;
  final List<String> data;

  AddAndRemoveFavouriteResponse(this.status, this.message, this.data);

 factory AddAndRemoveFavouriteResponse.fromJson(Map<String, dynamic> json) =>_$AddAndRemoveFavouriteResponseFromJson(json);
}