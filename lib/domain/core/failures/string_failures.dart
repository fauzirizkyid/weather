import 'package:freezed_annotation/freezed_annotation.dart';

part 'string_failures.freezed.dart';

@freezed
class StringFailure with _$StringFailure {
  const factory StringFailure.empty({
    required String? failedValue,
  }) = Empty;
  const factory StringFailure.invalidEmail({
    required String? failedValue,
  }) = InvalidEmail;
  const factory StringFailure.shortPassword({
    required String? failedValue,
  }) = ShortPassword;
}
