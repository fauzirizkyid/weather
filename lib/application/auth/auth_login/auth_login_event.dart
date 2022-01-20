part of 'auth_login_bloc.dart';

@freezed
class AuthLoginEvent with _$AuthLoginEvent {
  const factory AuthLoginEvent.emailChanged(String emailStr) = EmailChanged;
  const factory AuthLoginEvent.passwordChanged(String passwordStr) =
      PasswordChanged;
  const factory AuthLoginEvent.registerWithEmailAndPasswordPressed() =
      RegisterWithEmailAndPasswordPressed;
  const factory AuthLoginEvent.loginWithEmailAndPasswordPressed() =
      LoginWithEmailAndPasswordPressed;
  const factory AuthLoginEvent.loginWithGooglePressed() =
      LoginWithGooglePressed;
}
