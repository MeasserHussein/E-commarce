
import 'package:json_annotation/json_annotation.dart';

part 'api_error_model.g.dart';
@JsonSerializable()
class ApiErrorModel{

 final String? message;
 // @JsonKey(name: 'statusMsg')
 // final String ? code;
 final Errors? errors;


  factory ApiErrorModel.fromJson(Map<String,dynamic> json)=> _$ApiErrorModelFromJson(json);

  ApiErrorModel( {required this.errors, required this.message,});

  Map<String,dynamic> toJson() => _$ApiErrorModelToJson(this);
}


@JsonSerializable()
class Errors{
 final String? msg;



 factory Errors.fromJson(Map<String,dynamic> json)=> _$ErrorsFromJson(json);

  Errors({required this.msg});

 Map<String,dynamic> toJson() => _$ErrorsToJson(this);
}