import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:splitr/core/providers/app_store.dart';
import 'file:///C:/Users/Helpdesk/Documents/Opensource/splitr/lib/core/services/auth/auth.dart';
import 'file:///C:/Users/Helpdesk/Documents/Opensource/splitr/lib/ui/screens/screens.dart';
import 'package:splitr/core/utils/utils.dart';

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