import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:weather/domain/auth/auth_failure.dart';
import 'package:weather/domain/auth/i_auh_facade.dart';
import 'package:weather/domain/auth/value_objects.dart';

part 'sign_in_form_event.dart';
part 'sign_in_form_state.dart';
part 'sign_in_form_bloc.freezed.dart';

@injectable
class SignInFormBloc extends Bloc<SignInFormEvent, SignInFormState> {
  final IAuthFacade _authFacade;

  SignInFormBloc(this._authFacade) : super(SignInFormState.initial()) {
    on<SignInFormEvent>((event, emit) async {
      // TODO: implement event handler
      event.map(
          emailChanged: (e) async* {
            yield state.copyWith(
              emailAddress: EmailAddress(e.emailStr),
              authFailureOrSuccess: none(),
            );
          },
          passwordChanged: (e) async* {
            yield state.copyWith(
              password: Password(e.passwordStr),
              authFailureOrSuccess: none(),
            );
          },
          registerWithEmailAndPasswordPressed: (e) async* {
            yield* _performActionOnAuthFacadeWithEmailAndPassword(
              _authFacade.registerWithEmailAndPassword,
            );
          },
          signInWithEmailAndPasswordPressed: (e) async* {
            yield* _performActionOnAuthFacadeWithEmailAndPassword(
              _authFacade.signInWithEmailAndPassword,
            );
          },
          signInWithGooglePressed: (e) async* {
            yield state.copyWith(
              isSubmitting: true,
              authFailureOrSuccess: none(),
            );
            final failureOrSuccess = await _authFacade.signInWithGoogle();
            yield state.copyWith(
              isSubmitting: false,
              authFailureOrSuccess: some(failureOrSuccess),
            );
          });
    });
  }

  Stream<SignInFormState> _performActionOnAuthFacadeWithEmailAndPassword(
    Future<Either<AuthFailure, Unit>> Function(
            {required EmailAddress emailAddress, required Password password})
        forwardedCall,
  ) async* {
    Either<AuthFailure, Unit> failureOrSuccess;

    failureOrSuccess = await forwardedCall(
          emailAddress: state.emailAddress, password: state.password);

    final isEmailValid = state.emailAddress.isValid();
    final isPasswordValid = state.password.isValid();
    if (isEmailValid && isPasswordValid) {
      yield state.copyWith(
        isSubmitting: true,
        authFailureOrSuccess: none(),
      );

      failureOrSuccess = await forwardedCall(
          emailAddress: state.emailAddress, password: state.password);
    }

    yield state.copyWith(
      isSubmitting: false,
      showErrorMessages: true,
      authFailureOrSuccess: optionOf(failureOrSuccess),
    );
  }
}
