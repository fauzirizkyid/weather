import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:weather/injection.config.dart';
import 'package:weather/presentation/routers/routers.dart';

final GetIt getIt = GetIt.instance;

@injectableInit
void configureInjection(String env) {
  getIt.registerSingleton<AppRouter>(AppRouter());

  $initGetIt(getIt, environment: env);
}
