import 'package:flutter/material.dart';
import 'anynomismethod.dart';

class WidgetStl extends StatefulWidget {
  @override
  _WidgetStlState createState() => _WidgetStlState();
}

class _WidgetStlState extends State<WidgetStl> {
  int number = 0;
  void tekanTombol() {
    setState(() {
      number = number + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Statles Widget & StatlFull Widget")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              number.toString(),
              style: TextStyle(
                  color: Colors.red,
                  fontSize: 10 + number.toDouble(),
                  fontWeight: FontWeight.bold),
            ),
            GestureDetector(
              onTap: tekanTombol,
              child: Container(
                height: 90,
                width: 120,
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(width: 4, color: Colors.black),
                  gradient: LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                    colors: [
                      Color(0xff1d83ab),
                      Color(0xff0cbab8),
                    ],
                  ),
                ),
                child: Center(
                  child: Text(
                    "Tambah Bilangan nih ye",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
            RaisedButton(
              child: Text("Method"),
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => Method()));
              },
            ),
          ],
        ),
      ),
    );
  }
}
