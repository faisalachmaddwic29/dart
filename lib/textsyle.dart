import 'package:flutter/material.dart';
import 'listview.dart';

class TextS extends StatefulWidget {
  @override
  _TextSState createState() => _TextSState();
}

class _TextSState extends State<TextS> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Text Style"),
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => ListV()));
          },
          color: Colors.green,
          child: Text(
            "Faisal Achmad",
            style: TextStyle(
                fontSize: 40,
                fontFamily: "PTSans",
                decoration: TextDecoration.lineThrough,
                decorationColor: Colors.red,
                decorationThickness: 5,
                decorationStyle: TextDecorationStyle.wavy),
          ),
        ),
      ),
    );
  }
}
