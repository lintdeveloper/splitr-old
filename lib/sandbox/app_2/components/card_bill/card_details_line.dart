import 'package:flutter/material.dart';

class CardDetailsLine extends StatelessWidget {
  const CardDetailsLine({Key key, this.description, this.label = "Label"})
      : super(key: key);
  final String description;
  final String label;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 3, bottom: 3),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          SizedBox(
            width: 80,
            child: Text(
              label,
              style: TextStyle(color: Colors.white, fontSize: 13),
            ),
          ),
          SizedBox(
              child: Text(
            description,
            style: TextStyle(color: Colors.white, fontSize: 13),
          )),
        ],
      ),
    );
  }
}
