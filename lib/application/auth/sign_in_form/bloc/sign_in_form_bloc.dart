import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weather/domain/auth/auth_failure.dart';
import 'package:weather/domain/auth/i_auh_facade.dart';
import 'package:weather/domain/auth/value_objects.dart';

part 'sign_in_form_event.dart';
part 'sign_in_form_state.dart';
part 'sign_in_form_bloc.freezed.dart';

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
          registerWithEmailAndPasswordPressed: (e) async* {},
          signInWithEmailAndPasswordPressed: (e) async* {},
          signInWithGooglePressed: (e) async* {});
    });
  }
}
