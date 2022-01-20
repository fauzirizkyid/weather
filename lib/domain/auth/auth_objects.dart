import 'package:fpdart/fpdart.dart';
import 'package:weather/domain/core/failures/string_failures.dart';
import 'package:weather/domain/core/objects/string_objects.dart';
import 'package:weather/domain/core/validators/string_validators.dart';

class EmailAddress extends StringObject {
  @override
  final Either<StringFailure, String> value;

  factory EmailAddress(String input) {
    return EmailAddress._(
      StringValidators.validateStringNotEmpty(input).flatMap(
        StringValidators.validateEmail,
      ),
    );
  }

  // ._ is Private Constructor
  const EmailAddress._(this.value);
}

class Password extends StringObject {
  @override
  final Either<StringFailure, String> value;

  static const maxStrLength = 6;

  factory Password(String input) {
    return Password._(
      StringValidators.validatePassword(input, maxStrLength),
    );
  }

  // ._ is Private Constructor
  const Password._(this.value);
}
