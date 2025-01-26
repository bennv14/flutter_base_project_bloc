import 'package:flutter_base_project_bloc/core/common/data_state/data_state.dart';
import 'package:flutter_base_project_bloc/core/base/exceptions/my_exceptions.dart';

class RepoExecute {
  static Future<DataState<T>> execute<T>(Future<T> Function() future) async {
    try {
      final T result = await future();
      return DataSuccess(result);
    } on Exception catch (e) {
      return DataFailed(
        MyExceptions.fromException(e),
      );
    }
  }
}
