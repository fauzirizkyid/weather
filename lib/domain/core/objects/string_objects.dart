import 'package:flutter/foundation.dart';
import 'package:fpdart/fpdart.dart';
import 'package:uuid/uuid.dart';

import 'package:weather/domain/core/errors.dart';
import 'package:weather/domain/core/failures/string_failures.dart';

@immutable
abstract class StringObject {
  const StringObject();

  Either<StringFailure, String> get value;

  /// Throws [UnexpectedValueError] containing the [ValueFailure]
  String getOrCrash() {
    // id = identity - same as writing (right) => right
    return value.fold((f) => throw UnexpectedStringError(f), id);
  }

  String? getOrNull() {
    return value.fold((f) => null, id);
  }

  bool isValid() => value.isRight();

  @override
  String toString() => 'StringObject(value: $value)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is StringObject && other.value == value;
  }

  @override
  int get hashCode => value.hashCode;
}

class UniqueId extends StringObject {
  @override
  final Either<StringFailure, String> value;

  factory UniqueId() {
    return UniqueId._(
      right(const Uuid().v1()),
    );
  }

  factory UniqueId.fromUniqueString(String uniqueId) {
    return UniqueId._(
      right(uniqueId),
    );
  }

  const UniqueId._(this.value);
}