import 'package:flutter_base_project_bloc/features/home/data/models/modified_model.dart';
import 'package:flutter_base_project_bloc/features/home/domain/entities/film_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'generated/film_model.freezed.dart';
part 'generated/film_model.g.dart';

@freezed
class FilmModel extends FilmEntity with _$FilmModel {
  const factory FilmModel({
    @JsonKey(name: 'modified') required  ModifiedModel modified,
    @JsonKey(name: '_id') required String id,
    @JsonKey(name: 'name') required String name,
    @JsonKey(name: 'slug') required String slug,
    @JsonKey(name: 'originName') required String originName,
    @JsonKey(name: 'posterUrl') required String posterUrl,
    @JsonKey(name: 'thumbUrl') required String thumbUrl,
    @JsonKey(name: 'year') required int year,
  }) = _FilmModel;

  factory FilmModel.fromJson(Map<String, dynamic> json) => _$FilmModelFromJson(json);
}