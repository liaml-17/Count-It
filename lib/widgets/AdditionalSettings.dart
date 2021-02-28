import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinbox/flutter_spinbox.dart';

class AdditionalSettings extends StatefulWidget {
  @override
  _AdditionalSettingsState createState() => _AdditionalSettingsState();
}

class _AdditionalSettingsState extends State<AdditionalSettings> {
  final _formKey = GlobalKey<FormState>();
  String description;
  int min, start, max;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Additional counter settings"),
        ),
        floatingActionButton: FloatingActionButton(
          child: IconButton(
            onPressed: () {
              if (_formKey.currentState.validate()) {
                Map data = new Map();

                data['description'] = description;
                data['min'] = min;
                data['start'] = start;
                data['max'] = max;

                Navigator.pop(context, data);
                Scaffold.of(context).showSnackBar(
                    SnackBar(content: Text("Updated additional settings!")));
              }
            },
            icon: Icon(Icons.done),
          ),
        ),
        body: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ListTile(
                  leading: Icon(Icons.description),
                  title: TextFormField(
                    onChanged: (value) {
                      setState(() {
                        description = value;
                      });
                    },
                    autocorrect: true,
                    validator: (val) {
                      if (val.isEmpty) {
                        return 'Please enter a description for your counter.';
                      }
                      return null;
                    },
                    style: TextStyle(fontSize: 20),
                    decoration: InputDecoration(hintText: "Description"),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 30),
                ),
                Center(
                  child: Text("Minimum value", style: TextStyle(fontSize: 20)),
                ),
                SpinBox(
                  min: -1000,
                  max: 1000,
                  value: 0,
                  textStyle: TextStyle(fontSize: 20),
                  onChanged: (value) => min = value.toInt(),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 20),
                ),
                Center(
                    child:
                        Text("Starting value", style: TextStyle(fontSize: 20))),
                SpinBox(
                  min: -1000,
                  max: 1000,
                  value: 0,
                  textStyle: TextStyle(fontSize: 20),
                  onChanged: (value) => start = value.toInt(),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 20),
                ),
                Center(
                    child:
                        Text("Maximum value", style: TextStyle(fontSize: 20))),
                SpinBox(
                  min: -1000,
                  max: 1000,
                  value: 0,
                  textStyle: TextStyle(fontSize: 20),
                  onChanged: (value) => max = value.toInt(),
                ),
              ],
            )));
  }
}
