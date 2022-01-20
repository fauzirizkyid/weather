import 'package:fpdart/fpdart.dart';
import 'package:weather/domain/core/failures/string_failures.dart';
import 'package:get/get_utils/src/extensions/string_extensions.dart';

class StringValidators {
  static Either<StringFailure, String> validateStringNotEmpty(String input) {
    if (input.isNotEmpty) {
      return right(input);
    } else {
      return left(StringFailure.empty(failedValue: input));
    }
  }

  static Either<StringFailure, String> validateEmail(String input) {
    if (input.isEmail) {
      return right(input);
    } else {
      return left(StringFailure.invalidEmail(failedValue: input));
    }
  }

  static Either<StringFailure, String> validatePassword(
    String input,
    int maxLength,
  ) {
    if (input.length >= maxLength) {
      return right(input);
    } else {
      return left(StringFailure.shortPassword(failedValue: input));
    }
  }
}
