import 'package:fpdart/fpdart.dart';
import 'package:weather/domain/core/failures.dart';
import 'package:weather/domain/core/value_objects.dart';
import 'package:weather/domain/core/value_validators.dart';

class EmailAddress extends ValueObject {
  @override
  final Either<ValueFailure<String>, String> value;

  factory EmailAddress(String input) {
    return EmailAddress._(validateEmailAddress(input));
  }

  const EmailAddress._(this.value);
}

class Password extends ValueObject {
  @override
  final Either<ValueFailure<String>, String> value;

  factory Password(String input) {
    return Password._(validatePassword(input));
  }

  const Password._(this.value);
}
