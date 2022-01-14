import 'package:auto_route/annotations.dart';
import 'package:weather/presentation/pages/sign_in/sign_in_page.dart';
import 'package:weather/presentation/pages/splash/splash_page.dart';

import 'routes.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: [
    AutoRoute(
      name: 'SplashRouter',
      path: Routes.main,
      page: SplashPage,
      initial: true,
    ),
    AutoRoute(
      name: 'SignInRouter',
      path: Routes.signIn,
      page: SignInPage,
    ),
  ]
)

class $AppRoute {}