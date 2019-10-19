import 'package:flutter/material.dart';
import 'ink_well.dart';

class Mediaq extends StatefulWidget {
  @override
  _MediaqState createState() => _MediaqState();
}

class _MediaqState extends State<Mediaq> {
  void inksWell() {
    Navigator.push(context, MaterialPageRoute(builder: (context) => InkW()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow[100],
      appBar: AppBar(
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.red, Colors.yellow],
            ),
          ),
        ),
        title: Text("Media Querry"),
      ),
      body: Column(
        children: <Widget>[
          (MediaQuery.of(context).orientation == Orientation.portrait)
              ? Column(
                  children: generateContainer(),
                )
              : Row(
                  children: generateContainer(),
                ),
          RaisedButton(
            onPressed: inksWell,
            child: Text("Ink Well"),
          )
        ],
      ),
    );
  }
}

// Percabangan ES 6
// (syarat) ? kalau bener : kalau salah;

List<Widget> generateContainer() {
  return <Widget>[
    Container(width: 100, height: 100, color: Colors.red),
    Container(width: 100, height: 100, color: Colors.green),
    Container(width: 100, height: 100, color: Colors.blue),
  ];
}
