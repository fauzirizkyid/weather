import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:weather/presentation/pages/auth/login/login_wrapper_page.dart';
import 'package:weather/presentation/pages/auth/splash/splash_page.dart';
import 'package:weather/presentation/pages/landing/landing_wrapper_page.dart';
import 'package:weather/presentation/routers/router_pages.dart';

part 'routers.gr.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(path: AuthRouters.splash, page: SplashPage),
    AutoRoute(path: AuthRouters.login, page: LoginPage),
    AutoRoute(path: AuthRouters.landing, page: LandingPage),
  ],
)
class AppRouter extends _$AppRouter {}
