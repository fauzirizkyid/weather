import 'package:firebase_auth/firebase_auth.dart';
import 'package:weather/domain/auth/auth_user.dart';
import 'package:weather/domain/core/value_objects.dart';

extension FirebaseUserDomainX on User{
  AuthUser toDomain(){
    return AuthUser(id: UniqueId.fromUniqueString(uid));
  } 
}