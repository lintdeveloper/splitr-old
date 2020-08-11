import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'file:///C:/Users/Helpdesk/Documents/Opensource/splitr/lib/ui/app.dart';
import 'package:splitr/locator.dart';

void main() async {
  setupLocator();
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown])
      .then((_) => runApp(App()));
}
