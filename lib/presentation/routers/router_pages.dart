import 'package:get/get.dart';
import 'package:weather/presentation/pages/auth/login/login_wrapper_page.dart';
import 'package:weather/presentation/pages/auth/splash/splash_page.dart';
import 'package:weather/presentation/pages/landing/landing_wrapper_page.dart';

part 'auth/auth_pages.dart';
part 'auth/auth_routers.dart';

abstract class RouterPages {
  static final List<GetPage> pages = [
    ...AuthPages.pages,
  ];
}