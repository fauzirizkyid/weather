import 'package:bloc/bloc.dart';
import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:weather/domain/auth/auth_failure.dart';
import 'package:weather/domain/auth/auth_objects.dart';
import 'package:weather/domain/auth/i_auth_repository.dart';

part 'auth_login_event.dart';
part 'auth_login_state.dart';
part 'auth_login_bloc.freezed.dart';

@injectable
class AuthLoginBloc extends Bloc<AuthLoginEvent, AuthLoginState> {
  final IAuthRepository _authRepository;

  AuthLoginBloc(this._authRepository) : super(AuthLoginState.initial()) {
    on<AuthLoginEvent>((event, emit) async {
      await event.map(
        emailChanged: (value) async {
          emit(state.copyWith(
            emailAddress: EmailAddress(value.emailStr),
            authFailureOrSuccessOption: none(),
          ));
        },
        passwordChanged: (value) {
          emit(state.copyWith(
            password: Password(value.passwordStr),
            authFailureOrSuccessOption: none(),
          ));
        },
        loginWithEmailAndPasswordPressed: (value) async {
          final resp = await _performActionEmailAndPassword(
            _authRepository.signInWithEmailAndPassword,
          );

          emit(resp);
        },
        registerWithEmailAndPasswordPressed: (value) async {
          final resp = await _performActionEmailAndPassword(
            _authRepository.registerWithEmailAndPassword,
          );

          emit(resp);
        },
        loginWithGooglePressed: (value) async {
          emit(state.copyWith(
            isSubmitting: true,
            authFailureOrSuccessOption: none(),
          ));
          final failureOrSuccess = await _authRepository.signInWithGoogle();
          emit(state.copyWith(
            isSubmitting: false,
            authFailureOrSuccessOption: some(failureOrSuccess),
          ));
        },
      );
    });
  }

  Future<AuthLoginState> _performActionEmailAndPassword(
    Future<Either<AuthFailure, Unit>> Function(
            {required EmailAddress emailAddress, required Password password})
        forwardedCall,
  ) async {
    Either<AuthFailure, Unit> failureOrSuccess;

    final isEmailValid = state.emailAddress.isValid();
    final isPasswordValid = state.password.isValid();

    if (isEmailValid && isPasswordValid) {
      failureOrSuccess = await forwardedCall(
          emailAddress: state.emailAddress, password: state.password);

      return state.copyWith(
        isSubmitting: failureOrSuccess.fold((l) => false, (r) => true),
        showErrorMessages: failureOrSuccess.fold((l) => true, (r) => false),
        authFailureOrSuccessOption: optionOf(failureOrSuccess),
      );
    }

    return state.copyWith(
      isSubmitting: false,
      showErrorMessages: true,
    );
  }
}
