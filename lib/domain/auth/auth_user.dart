import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weather/domain/core/objects/string_objects.dart';

part 'auth_user.freezed.dart';

@freezed
abstract class AuthUser with _$AuthUser {
  const factory AuthUser({required UniqueId id}) = _AuthUser;
}