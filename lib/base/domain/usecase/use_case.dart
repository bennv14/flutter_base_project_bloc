abstract class BaseUseCase<Type, Input> {
  Future<Type> execute(Input input);
}

abstract class UseCaseIO<Type, Input> extends BaseUseCase<Type, Input> {
  Future<Type> build(Input input);

  @override
  Future<Type> execute(Input input);
}

abstract class UseCase<Type> extends BaseUseCase<Type, Null> {
  Future<Type> build();

  @override
  Future<Type> execute([Null input]);
}
