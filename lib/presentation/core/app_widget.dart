import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather/application/auth/auth_bloc.dart';
import 'package:weather/injection.dart';
import 'package:weather/presentation/routers/app_routes.gr.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final AppRoute appRoute = AppRoute();
    return FutureBuilder(
      // Initialize FlutterFire
      future: Firebase.initializeApp(),
      builder: (context, snapshot) {
        // Check for errors
        if (snapshot.hasError) {
          return Container();
        }

        // Once complete, show your application
        if (snapshot.connectionState == ConnectionState.done) {
          debugPrint('Connect');
          return MultiBlocProvider(
            providers: [
              BlocProvider(create: (context) {
                debugPrint('Masuk?');
                return getIt<AuthBloc>()
                  ..add(const AuthEvent.authCheckRequested());
              }),
            ],
            child: MaterialApp.router(
              title: "Weather App",
              debugShowCheckedModeBanner: false,
              routeInformationParser: appRoute.defaultRouteParser(),
              routerDelegate: appRoute.delegate(),
              theme: ThemeData.light().copyWith(
                  primaryColor: Colors.green[800],
                  floatingActionButtonTheme: FloatingActionButtonThemeData(
                    backgroundColor: Colors.blue[900],
                  ),
                  inputDecorationTheme: InputDecorationTheme(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(0)))),
            ),
          );
        }

        // Otherwise, show something whilst waiting for initialization to complete
        return const CircularProgressIndicator();
      },
    );
  }
}
