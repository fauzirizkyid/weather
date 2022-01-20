part of 'auth_login_bloc.dart';

@freezed
class AuthLoginState with _$AuthLoginState {
  const factory AuthLoginState({
    required EmailAddress emailAddress,
    required Password password,
    required bool showErrorMessages,
    required bool isSubmitting,
    required Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption,
  }) = _AuthLoginState;

  factory AuthLoginState.initial() => AuthLoginState(
        emailAddress: EmailAddress(''),
        password: Password(''),
        showErrorMessages: false,
        isSubmitting: false,
        authFailureOrSuccessOption: none(),
      );
}
