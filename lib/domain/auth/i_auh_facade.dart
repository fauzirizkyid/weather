import 'package:dartz/dartz.dart';
import 'package:weather/domain/auth/auth_failure.dart';
import 'package:weather/domain/auth/auth_user.dart';

import 'value_objects.dart';

abstract class IAuthFacade {
  Future<Option<AuthUser>> getSignedInUser();
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