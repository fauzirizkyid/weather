import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:weather/injection.dart';
import 'package:weather/presentation/core/app_widget.dart';

Future<void> main() async {
  configureInjection(Environment.prod);
  runApp(const AppWidget());
}