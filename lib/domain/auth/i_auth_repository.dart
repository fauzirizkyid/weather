import 'package:fpdart/fpdart.dart';

import 'auth_failure.dart';
import 'auth_objects.dart';
import 'auth_user.dart';

abstract class IAuthRepository {
  Future<Either<AuthUser, Unit>> getSignedInUser();
  Future<Either<AuthFailure, Unit>> registerWithEmailAndPassword({
    required EmailAddress emailAddress,
    required Password password,
  });
  Future<Either<AuthFailure, Unit>> signInWithEmailAndPassword({
    required EmailAddress emailAddress,
    required Password password,
  });
  Future<Either<AuthFailure, Unit>> signInWithGoogle();
  Future<void> signOut();
}