import 'package:flutter_base_project_bloc/features/demo_base_screen/domain/entities/modified_entity.dart';

abstract class FilmEntity {
  final ModifiedEntity modified;
  final String id;
  final String name;
  final String slug;
  final String originName;
  final String posterUrl;
  final String thumbUrl;
  final int year;

  FilmEntity({
    required this.modified,
    required this.id,
    required this.name,
    required this.slug,
    required this.originName,
    required this.posterUrl,
    required this.thumbUrl,
    required this.year,
  });
}
