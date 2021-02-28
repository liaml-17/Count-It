import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Counter {
  String name;
  String description;
  Color backgroundColor, fontColor = Colors.black;
  double width = 192, height = 128;
  int count;

  Counter(
      {@required this.name,
      @required this.backgroundColor,
      this.fontColor,
      this.description,
      this.width,
      this.height,
      this.count});
}
