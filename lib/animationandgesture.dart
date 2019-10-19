import 'dart:math';
import 'package:flutter/material.dart';
import 'taps.dart';
import 'flexible.dart';

class GestureS extends StatefulWidget {
  @override
  _GestureSState createState() => _GestureSState();
}

// Mau membuat ketika diklik berubah wrna dan ukuran secaara random
// rules
// Generate bilangan random
// gesture detector itu adalah perilaku widget pada widget seperti ontap Double tap
class _GestureSState extends State<GestureS> {
  Random random = Random();
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("AnimationContainer & Gesture Detector"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Center(
            child: GestureDetector(
              onTap: () {
                setState(() {
                  index = random.nextInt(256);
                  print(index);
                });
              },
              child: AnimatedContainer(
                duration: Duration(seconds: 1),
                color: Color.fromARGB(255, random.nextInt(256),
                    random.nextInt(256), random.nextInt(256)),
                width: 50.0 + random.nextInt(400),
                height: 50.0 + random.nextInt(101),
              ),
            ),
          ),
          RaisedButton(
            child: Text("untuk melihat macam macam tap pada gesture detector"),
            onPressed: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => Taps()));
            },
          ),
          RaisedButton(
            onPressed: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => FlexibleS()));
            },
            child: Text("Flexible Widget"),
          )
        ],
      ),
    );
  }
}
