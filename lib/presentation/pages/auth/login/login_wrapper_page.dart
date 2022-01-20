import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather/application/auth/auth_login/auth_login_bloc.dart';
import 'package:weather/injection.dart';

import 'login_form_page.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Log In'),
      ),
      body: BlocProvider(
        create: (context) => getIt<AuthLoginBloc>(),
        child: const LoginForm(),
      ),
    );
  }
}
