import 'package:count_it/models/CounterModel.dart';
import 'package:count_it/widgets/AdditionalSettings.dart';
import 'package:count_it/widgets/ColorPicker.dart';
import 'package:count_it/widgets/CounterCard.dart';
import 'package:flutter/material.dart';

class AddCounterCard extends StatefulWidget {
  AddCounterCard();

  @override
  _AddCounterCardState createState() => _AddCounterCardState();
}

class _AddCounterCardState extends State<AddCounterCard> {
  final _formKey = GlobalKey<FormState>();
  String name;
  Color backgroundColor, fontColor;

  _navToBGColPicker(BuildContext context) async {
    final result = await Navigator.push(
        context, MaterialPageRoute(builder: (context) => ColorPicker()));
    setState(() {
      backgroundColor = result;
    });
  }

  _navToFontColPicker(BuildContext context) async {
    final result = await Navigator.push(
        context, MaterialPageRoute(builder: (context) => ColorPicker()));
    setState(() {
      fontColor = result;
    });
  }

  _navToAddSettings(BuildContext context) async {
    final result = await Navigator.push(
        context, MaterialPageRoute(builder: (context) => AdditionalSettings()));
    print('$result');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Add new counter"),
        ),
        floatingActionButton: FloatingActionButton(
          child: IconButton(
            onPressed: () {
              if (_formKey.currentState.validate()) {
                Scaffold.of(context).showSnackBar(
                    SnackBar(content: Text("Added your new counter!")));
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
                  leading: Icon(Icons.title),
                  title: TextFormField(
                    onChanged: (value) {
                      setState(() {
                        name = value;
                      });
                    },
                    autocorrect: true,
                    validator: (val) {
                      if (val.isEmpty) {
                        return 'Please enter a name for your counter.';
                      }
                      return null;
                    },
                    decoration: InputDecoration(hintText: "Name"),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 10),
                ),

                /*ListTile(
                  leading: Icon(Icons.description),
                  title: TextFormField(
                    autocorrect: true,
                    decoration: InputDecoration(hintText: "Description"),
                  ),
                ),*/

                Padding(padding: EdgeInsets.only(bottom: 10)),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Center(
                        child: FlatButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      color: Colors.blue,
                      height: 60,
                      minWidth: 100,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8),
                            child: Icon(Icons.colorize),
                          ),
                          Text("Background"),
                          Padding(padding: EdgeInsets.all(5))
                        ],
                      ),
                      onPressed: () {
                        _navToBGColPicker(context);
                      },
                    )),
                    Center(
                        child: FlatButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      color: Colors.blue,
                      height: 60,
                      minWidth: 100,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8),
                            child: Icon(Icons.colorize),
                          ),
                          Text("Font"),
                          Padding(padding: EdgeInsets.all(5))
                        ],
                      ),
                      onPressed: () {
                        _navToFontColPicker(context);
                      },
                    ))
                  ],
                ),
                Padding(padding: EdgeInsets.only(bottom: 15)),
                Center(
                    child: FlatButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  color: Colors.blue,
                  height: 60,
                  minWidth: 200,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8),
                        child: Icon(Icons.create),
                      ),
                      Text("Additional settings"),
                      Padding(padding: EdgeInsets.all(5))
                    ],
                  ),
                  onPressed: () {
                    _navToAddSettings(context);
                  },
                )),
                Padding(padding: EdgeInsets.all(20)),
                Center(
                  child: Container(
                    child: Text(
                      "Example",
                      style: TextStyle(fontFamily: "Oswald", fontSize: 28),
                    ),
                  ),
                ),
                Divider(
                  indent: 75,
                  endIndent: 75,
                  color: Colors.black,
                  thickness: 1,
                ),
                Center(
                  child: counterCard(
                      context,
                      new Counter(
                          name: name,
                          backgroundColor: backgroundColor,
                          fontColor: fontColor)),
                ),
              ],
            )));
    //));
  }
}
