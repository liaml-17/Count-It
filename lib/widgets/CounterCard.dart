import 'package:count_it/models/CounterModel.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

@override
Widget counterCard(BuildContext context, Counter counter) {
  return Container(
    width: 192,
    height: 128,
    child: Card(
        color: counter.backgroundColor,
        elevation: 20,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Text(
              counter.name == null || counter.name == ""
                  ? "Example"
                  : counter.name,
              style: TextStyle(
                  fontFamily: "Oswald", fontSize: 28, color: counter.fontColor),
            ),
            Text(
              "3",
              style: TextStyle(
                  fontFamily: 'Oswald', fontSize: 32, color: counter.fontColor),
            ),
          ],
        )),
  );
}
