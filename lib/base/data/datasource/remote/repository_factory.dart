import 'package:flutter_base_project_riverpod/base/data/models/data_state.dart';
import 'package:flutter_base_project_riverpod/base/domain/entities/app_exception.dart';

class RepositoryFactory<T> {
  static DataState<T> execute<T>(T Function() apiCall) {
    try {
      return DataSuccess(apiCall());
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
