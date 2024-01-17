class NoParams {}

abstract class UseCase<Input, Output> {
  Future<Output> call(Input param);
}
