import 'failures/string_failures.dart';

class UnexpectedStringError extends Error {
  final StringFailure valueFailure;

  UnexpectedStringError(this.valueFailure);

  @override
  String toString() {
    const explanation =
        'Encountered a StringFailure at an unrecoverable point. Terminating.';
    return Error.safeToString('$explanation Failure was: $valueFailure');
  }
}