import 'package:flutter/material.dart';
import 'package:weather/application/auth/auth_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:auto_route/auto_route.dart';
import 'package:weather/presentation/routers/app_routes.gr.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
        state.map(
          initial: (_) {},
          authenticated: (_) {
            debugPrint('Authenticated');
          },
          unauthenticated: (_) => context.replaceRoute(const SignInRouter()),
        );
      },
      child: Scaffold(
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children:const [
              CircularProgressIndicator(),
              SizedBox(height: 16),
              Text('Please Wait...')
            ],
          ),
        ),
      ),
    );
  }
}
