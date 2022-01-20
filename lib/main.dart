import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:weather/presentation/core/app_widget.dart';

import 'injection.dart';

Future<void> main() async {
  configureInjection(Environment.dev);
  runApp(const AppWidget());
}
