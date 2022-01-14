import 'package:another_flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:weather/application/auth/sign_in_form/bloc/sign_in_form_bloc.dart';

class SignInForm extends StatelessWidget {
  const SignInForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignInFormBloc, SignInFormState>(
      listener: (context, state) {
        state.authFailureOrSuccessOption.fold(
            () => null,
            (either) => either.fold((failure) {
                  FlushbarHelper.createError(
                    message: failure.map(
                      cancelledByUser: (_) => 'Cancelled',
                      serverError: (_) => 'Server error',
                      emailAlreadyInUse: (_) => 'Email already in use',
                      invalidEmailAndPasswordCombination: (_) =>
                          'Invalid email and password combination',
                    ),
                  ).show(context);
                }, (_) => null));
      },
      builder: (context, state) {
        return Form(
            autovalidateMode: state.showErrorMessages
                ? AutovalidateMode.always
                : AutovalidateMode.disabled,
            child: ListView(
              padding: const EdgeInsets.all(16),
              children: [
                const Center(
                  child: Icon(
                    FontAwesomeIcons.cloudSunRain,
                    size: 140,
                    color: Colors.blueAccent
                  ),
                ),
                const SizedBox(height: 32),
                TextFormField(
                    decoration: const InputDecoration(
                      prefixIcon: Icon(FontAwesomeIcons.envelope),
                      label: Text('Email'),
                    ),
                    autocorrect: false,
                    onChanged: (value) => context
                        .read<SignInFormBloc>()
                        .add(SignInFormEvent.emailChanged(value)),
                    validator: (_) => context
                        .read<SignInFormBloc>()
                        .state
                        .emailAddress
                        .value
                        .fold(
                            (f) => f.maybeMap(
                                  invalidEmail: (_) => 'Invalid Email',
                                  orElse: () => null,
                                ),
                            (r) => null)),
                const SizedBox(height: 8),
                TextFormField(
                    decoration: const InputDecoration(
                      prefixIcon: Icon(FontAwesomeIcons.lock),
                      label: Text('Password'),
                    ),
                    autocorrect: false,
                    obscureText: true,
                    onChanged: (value) => context
                        .read<SignInFormBloc>()
                        .add(SignInFormEvent.passwordChanged(value)),
                    validator: (_) => context
                        .read<SignInFormBloc>()
                        .state
                        .password
                        .value
                        .fold(
                            (f) => f.maybeMap(
                                  shortPassword: (_) => 'Short Password',
                                  orElse: () => null,
                                ),
                            (r) => null)),
                Row(
                  children: [
                    Expanded(
                        child: TextButton(
                            onPressed: () {
                              context.read<SignInFormBloc>().add(
                                  const SignInFormEvent
                                      .signInWithEmailAndPasswordPressed());
                            },
                            child: const Text('Sign In'))),
                    Expanded(
                        child: TextButton(
                            onPressed: () {
                              context.read<SignInFormBloc>().add(
                                  const SignInFormEvent
                                      .registerWithEmailAndPasswordPressed());
                            },
                            child: const Text('Register'))),
                  ],
                ),
                const SizedBox(height: 8),
                ElevatedButton(
                    onPressed: () {
                      context
                          .read<SignInFormBloc>()
                          .add(const SignInFormEvent.signInWithGooglePressed());
                    },
                    child: const Text('Sign In With Google',
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold)))
              ],
            ));
      },
    );
  }
}
