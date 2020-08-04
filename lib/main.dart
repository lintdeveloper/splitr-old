import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:splitr/app/app.dart';
import 'package:splitr/locator.dart';

void main() async {
  setupLocator();
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown])
      .then((_) => runApp(App()));
}
