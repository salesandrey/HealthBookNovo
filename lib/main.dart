import 'package:flutter/material.dart';
import 'package:HealthBook/app/app_module.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  Provider.debugCheckInvalidValueType = null;
  runApp(ModularApp(module: AppModule()));
}
