import 'package:code_id_storage/code_services/storage/storage.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:weather/presentation/core/app_widget.dart';

import 'injection.dart';

Future<void> main() async {
  await Storage.init();
  configureInjection(Environment.dev);
  runApp(const AppWidget());
}
