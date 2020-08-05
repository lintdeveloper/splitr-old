import 'package:flutter/material.dart';
import 'package:splitr/sandbox/app_2/components/header/header_widget.dart';

class ResultPage extends StatefulWidget {
  @override
  _ResultPageState createState() => _ResultPageState();
}

class _ResultPageState extends State<ResultPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          children: <Widget>[
            Header(
              title: "Result",
            )
          ],
        ),
      )),
    );
  }
}
