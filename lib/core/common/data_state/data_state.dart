abstract class DataState<T> {
  final T? data;
  final Exception? exception;

  const DataState({
    this.data,
    this.exception,
  });
}

class DataLoading<T> extends DataState<T> {
  const DataLoading(T? data) : super(data: data);

  @override
  String toString() => 'DataLoading ${T.toString()}';
}

class DataSuccess<T> extends DataState<T> {
  const DataSuccess(T data) : super(data: data);

  @override
  String toString() => 'DataSuccess ${T.toString()} $data';
}

class DataFailed<T> extends DataState<T> {
  const DataFailed(Exception exception) : super(exception: exception);

  @override
  String toString() => 'DataFailed ${T.toString()} $exception';
}
