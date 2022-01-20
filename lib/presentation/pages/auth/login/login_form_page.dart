import 'package:another_flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:weather/application/auth/auth_bloc.dart';
import 'package:weather/application/auth/auth_login/auth_login_bloc.dart';
import 'package:weather/presentation/routers/routers.dart';
import 'package:auto_route/auto_route.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthLoginBloc, AuthLoginState>(
      listener: (context, state) {
        state.authFailureOrSuccessOption.map(
          (either) => either.fold(
            (failure) {
              FlushbarHelper.createError(
                message: failure.map(
                  cancelledByUser: (_) => 'Cancelled',
                  serverError: (_) => 'Server error',
                  emailAlreadyInUse: (_) => 'Email already in use',
                  invalidEmailAndPasswordCombination: (_) =>
                      'Invalid email and password combination',
                ),
              ).show(context);
            },
            (_) {
              context.replaceRoute(const LandingRoute());
              context
                  .read<AuthBloc>()
                  .add(const AuthEvent.authCheckRequested());
            },
          ),
        );
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
                  child: Icon(FontAwesomeIcons.cloudSunRain,
                      size: 140, color: Colors.blueAccent),
                ),
                const SizedBox(height: 32),
                TextFormField(
                    decoration: const InputDecoration(
                      prefixIcon: Icon(FontAwesomeIcons.envelope),
                      label: Text('Email'),
                    ),
                    autocorrect: false,
                    onChanged: (value) => context
                        .read<AuthLoginBloc>()
                        .add(AuthLoginEvent.emailChanged(value)),
                    validator: (_) => context
                        .read<AuthLoginBloc>()
                        .state
                        .emailAddress
                        .value
                        .fold(
                            (f) => f.maybeMap(
                                  empty: (_) => 'Please input your Email',
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
                        .read<AuthLoginBloc>()
                        .add(AuthLoginEvent.passwordChanged(value)),
                    validator: (_) =>
                        context.read<AuthLoginBloc>().state.password.value.fold(
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
                              context.read<AuthLoginBloc>().add(
                                  const AuthLoginEvent
                                      .loginWithEmailAndPasswordPressed());
                            },
                            child: const Text('Login'))),
                    Expanded(
                        child: TextButton(
                            onPressed: () {
                              context.read<AuthLoginBloc>().add(
                                  const AuthLoginEvent
                                      .registerWithEmailAndPasswordPressed());
                            },
                            child: const Text('Register'))),
                  ],
                ),
                const SizedBox(height: 8),
                ElevatedButton(
                    onPressed: () {
                      context
                          .read<AuthLoginBloc>()
                          .add(const AuthLoginEvent.loginWithGooglePressed());
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
