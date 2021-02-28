import 'package:flutter_circle_color_picker/flutter_circle_color_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ColorPicker extends StatefulWidget {
  @override
  _ColorPickerState createState() => _ColorPickerState();
}

class _ColorPickerState extends State<ColorPicker> {
  Color _color;

  Future<void> _changeColor(Color c) async {
    setState(() {
      _color = c;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Color picker"),
        ),
        body: Column(
          children: [
            Padding(padding: EdgeInsets.all(10)),
            Center(
                child: CircleColorPicker(
              initialColor: Colors.blue,
              onChanged: (c) {
                _changeColor(c);
              },
              size: const Size(360, 360),
              strokeWidth: 12,
              thumbSize: 24,
            )),
            Padding(padding: EdgeInsets.only(bottom: 15)),
            ElevatedButton.icon(
              onPressed: () => Navigator.pop(context, _color),
              icon: Icon(
                Icons.arrow_right_alt,
                size: 48,
              ),
              label: Text(
                "Select",
                style: TextStyle(fontSize: 22),
              ),
            )
          ],
        ));
  }
}
