import 'package:json_annotation/json_annotation.dart';

part 'generated/base_response.g.dart';

@JsonSerializable(genericArgumentFactories: true)
class BaseResponse<T> {
  final bool? status;
  final String? msg;
  @JsonKey(name: 'items')
  final T? data;


  const BaseResponse({
    this.status,
    this.msg,
    this.data,
  });

  factory BaseResponse.fromJson(Map<String, dynamic> json, T Function(Object? data) convert) =>
      _$BaseResponseFromJson(json, convert);

}
