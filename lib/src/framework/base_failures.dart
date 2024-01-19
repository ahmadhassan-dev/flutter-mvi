abstract class Failure implements Exception {
  final String message;

  const Failure(this.message);
}

class SomethingWentWrong extends Failure {
  SomethingWentWrong(super.message);
}

// Forget to ask if we will not use failure like this then how can we handle exceptions in our application
