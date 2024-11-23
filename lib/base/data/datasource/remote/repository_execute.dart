import 'package:flutter_base_project_riverpod/base/data/models/data_state.dart';
import 'package:flutter_base_project_riverpod/base/domain/entities/app_exception.dart';

class RepositoryExecute {
  static Future<DataState<T>> execute<T>(Future<T> Function() future) async {
    try {
      final T result = await future();
      return DataSuccess(result);
    } catch (e) {
      return DataFailed(
        AppException(
          AppExceptionType.unknown,
          e.toString(),
        ),
      );
    }
  }
}
