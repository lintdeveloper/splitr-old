import 'package:flutter/material.dart';
import 'package:splitr/sandbox/app_2/components/card_bill/card_details_line.dart';

class CardBill extends StatelessWidget {
  const CardBill({Key key, this.value = 80, this.friends = 4, this.tips = 10})
      : super(key: key);
  final double value;
  final int friends;
  final double tips;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(0),
      child: ConstrainedBox(
        constraints:
            BoxConstraints(minWidth: MediaQuery.of(context).size.width),
        child: Card(
          color: Colors.black,
          margin: EdgeInsets.all(0),
          child: Container(
            padding: EdgeInsets.all(30),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Expanded(
                    child: Container(
                  padding: EdgeInsets.only(right: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text("TOTAL",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w600)),
                      FittedBox(
                          alignment: Alignment.topLeft,
                          fit: BoxFit.scaleDown,
                          child: Text("\$ ${value.toStringAsFixed(2)}",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 40.0,
                                  fontWeight: FontWeight.w600)))
                    ],
                  ),
                )),
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.max,
                    children: <Widget>[
                      CardDetailsLine(
                        label: "BILL",
                        description: "\$ ${value.toStringAsFixed(2)}",
                      ),
                      CardDetailsLine(
                        label: "FRIENDS",
                        description: friends.toString(),
                      ),
                      CardDetailsLine(
                        label: "TIPS (${tips.toStringAsFixed(0)}%) ",
                        description:
                            "\$ ${(value * (tips / 100)).toStringAsFixed(2)}",
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
