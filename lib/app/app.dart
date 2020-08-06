import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:splitr/app/providers/app_store.dart';
import 'package:splitr/app/services/auth/auth.dart';
import 'package:splitr/app/utils/utils.dart';
import 'package:splitr/app/screens/screens.dart';

class App extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => AppStore())
      ],
      child: MaterialApp(
        title: appName,
        theme: lightTheme,
        debugShowCheckedModeBanner: false,
        home: HomeScreen(auth: new Auth()),
      ),
    );
  }
}