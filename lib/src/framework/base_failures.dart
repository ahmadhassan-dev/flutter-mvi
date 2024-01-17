abstract class Failure implements Exception {
  final String message;

  const Failure(this.message);
}

class SomethingWentWrong extends Failure {
  SomethingWentWrong(super.message);
}
