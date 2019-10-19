import 'package:flutter/material.dart';
import 'textsyle.dart';

class Method extends StatefulWidget {
  @override
  _MethodState createState() => _MethodState();
}

class _MethodState extends State<Method> {
  String text = "tekan saya";

  void pindahTextstyle() {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => TextS()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Method"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(text),
            RaisedButton(
              child: Text("Tekan saya"),
              onPressed: () {
                setState(() {
                  text = "Berhasil ditekan";
                });
              },
            ),
            FlatButton(
              onPressed: pindahTextstyle,
              child: Text("pindah ke Textstyle"),
            )
          ],
        ),
      ),
    );
  }
}
