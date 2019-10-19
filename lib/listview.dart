import 'package:flutter/material.dart';
import 'animationandgesture.dart';

class ListV extends StatefulWidget {
  @override
  _ListVState createState() => _ListVState();
}

class _ListVState extends State<ListV> {
  List<Widget> widgets = [];

  // Counter untuk menentukan nilai yang di tambah
  int counter = 1;

  // Buat Contructor terlebih dahulu
  // _ListVState() {
  // Menggunakan For
  // for (int i = 0; i < 15; i++) {
  //   widgets.add(Text(
  //     "Data ke-" + i.toString(),
  //     style: TextStyle(fontSize: 30),
  //   ));
  // }

  //   // Cara Manual
  //   // widgets.add(Text("Data ke 1"));
  //   // widgets.add(Text("Dat a ke 2"));
  //   // widgets.add(Text("Data ke 3"));
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("LIst Vieww"),
        ),
        body: ListView(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                RaisedButton(
                  onPressed: () {
                    setState(() {
                      widgets.add(Text(
                        "data ke" + " " + counter.toString(),
                        style: TextStyle(fontSize: 35),
                      ));
                      counter = counter + 1;
                      // Atau bisa counter++
                    });
                  },
                  child: Text("Tambah Data"),
                ),
                RaisedButton(
                  onPressed: () {
                    setState(() {
                      widgets.removeLast();
                      counter = counter - 1;
                    });
                  },
                  child: Text("Kurang Data"),
                )
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: widgets,
            ),
            RaisedButton(
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return GestureS();
                }));
              },
              child: Text("Gesture and Animation"),
            )
          ],
        ));
  }
}
