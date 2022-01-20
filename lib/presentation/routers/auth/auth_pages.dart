part of 'package:weather/presentation/routers/router_pages.dart';

abstract class AuthPages {
  static final pages = [
    GetPage(
      name: AuthRouters.splash,
      page: () => const SplashPage(),
    ),
    GetPage(
      name: AuthRouters.login,
      page: () => const LoginPage(),
    ),
    GetPage(
      name: AuthRouters.landing,
      page: () => const LandingPage(),
    ),
  ];
}
