// ignore_for_file: invalid_annotation_target

import 'package:flutter_base_project_bloc/features/home/domain/entities/modified_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'generated/modified_model.freezed.dart';
part 'generated/modified_model.g.dart';

@freezed
class ModifiedModel extends ModifiedEntity with _$ModifiedModel {
  const factory ModifiedModel({
    @JsonKey(name: 'time') required DateTime time,
    @JsonKey(name: 'contents') required String content,
  }) = _ModifiedModel;

  factory ModifiedModel.fromJson(Map<String, dynamic> json) =>
      _$ModifiedModelFromJson(json);

}