import 'package:flutter/material.dart';
import 'package:splitr/app/services/services.dart';
import 'package:splitr/app/utils/constants.dart';
import 'package:splitr/app/widgets/responsive_safe_area.dart';
import 'package:splitr/app/widgets/widgets.dart';

class DashboardScreen extends StatefulWidget {
  DashboardScreen({Key key, this.auth, this.userId, this.logoutCallback})
      : super(key: key);

  final BaseAuth auth;
  final VoidCallback logoutCallback;
  final String userId;

  @override
  _DashboardScreenState createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: CircleAvatar( backgroundImage: NetworkImage("https://images.unsplash.com/profile-1546801126806-60bc"
              "73bbbee0?dpr=1&auto=format&fit=crop&w=150&h=150&q=60&crop=faces&bg=fff"), backgroundColor: LIGHT_BLUE_ACCENT),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        title: Text("Splitr", style: TextStyle(color: BLACK, fontSize: 16, fontWeight: FontWeight.w500),),
        elevation: 0.4
      ),
       body: ResponsiveSafeArea(
        builder: (context, size){
          return Container(
            child: ListView(
              children: <Widget>[
                Container(
                  height: size.height * .42,
                  color: LIGHT_BLUE_ACCENT,
                  child:  GroupCards()
                )
              ],
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: null,
        child: Icon(Icons.add),
      ),
    );
  }

}

