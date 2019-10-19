import 'package:flutter/material.dart';
import 'custom_card.dart';

class InkW extends StatefulWidget {
  @override
  _InkWState createState() => _InkWState();
}

class _InkWState extends State<InkW> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Ink Well Dengan Custom Sendiri"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            RaisedButton(
              splashColor: Colors.red,
              child: Text("RaiseD Button"),
              onPressed: () {},
              shape: StadiumBorder(),
              color: Colors.amber,
            ),
            // InkWell Keliatan dipasang ketika ada Material
            Container(
              width: 150,
              height: 40,
              decoration: BoxDecoration(
                boxShadow: <BoxShadow>[
                  BoxShadow(
                      offset: Offset(4, 4), blurRadius: 10, color: Colors.red),
                ],
                borderRadius: BorderRadius.circular(20),
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Colors.purple, Colors.pink],
                ),
              ),
              child: Material(
                borderRadius: BorderRadius.circular(20),
                color: Colors.transparent,
                child: InkWell(
                  highlightColor: Colors.pink[300],
                  splashColor: Colors.red[300],
                  borderRadius: BorderRadius.circular(20),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => CustomCard()));
                  },
                  child: Center(
                    child: Text(
                      "My button ink",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
