import 'package:flutter/material.dart';

import 'hero_cliprrect.dart';

class Lp extends StatefulWidget {
  @override
  _LpState createState() => _LpState();
}

class _LpState extends State<Lp> {
  double getSmallDiameter(BuildContext context) {
    return MediaQuery.of(context).size.width * 2 / 3;
  }

  double getBigDiameter(BuildContext context) {
    return MediaQuery.of(context).size.width * 7 / 8;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("faisal"),
      ),
      backgroundColor: Colors.grey[350],
      body: Container(
        child: RaisedButton(
          child: Text("25. HEro and cliprrect"),
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => HeroClip()));
          },
        ),
      ),
    );
  }
}
