import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather/application/auth/auth_bloc.dart';
import 'package:weather/presentation/routers/routers.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
        listener: (context, state) {
          state.map(
            initial: (_) {},
            authenticated: (_) {
              debugPrint('authenticated');
            },
            unauthenticated: (_) => context.replaceRoute(const LoginRoute()),
          );
        },
        child: Scaffold(
          body: Center(
            child: Column(
              children: [
                const Text('You Success!'),
                ElevatedButton(
                    onPressed: () {
                      context.read<AuthBloc>().add(const AuthEvent.signedOut());
                    },
                    child: const Text('Logout'))
              ],
            ),
          ),
        ));
  }
}
