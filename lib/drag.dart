import 'package:flutter/material.dart';
import 'navigasi.dart';

class Drags extends StatefulWidget {
  @override
  _DragsState createState() => _DragsState();
}

class _DragsState extends State<Drags> {
  Color color1 = Colors.red;
  Color color2 = Colors.green;
  String fsl = "Belom ke Drag";
  String faisal = "Sudah ke Drag";
  bool isAccepted = false;
  Color targetColor = Colors.yellow;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Drag And DRAGABLE"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Draggable<Color>(
                data: color1,
                child: SizedBox(
                  width: 50,
                  height: 50,
                  child: Material(
                    color: color1,
                    shape: StadiumBorder(),
                    elevation: 10,
                  ),
                ),
                childWhenDragging: SizedBox(
                  width: 50,
                  height: 50,
                  child: Material(
                    color: Colors.green,
                    shape: StadiumBorder(),
                    elevation: 10,
                  ),
                ),
                feedback: SizedBox(
                  width: 50,
                  height: 50,
                  child: Material(
                    color: color1.withOpacity(0.8),
                    shape: StadiumBorder(),
                    elevation: 10,
                  ),
                ),
              ),
              Draggable<Color>(
                data: color2,
                child: SizedBox(
                  width: 50,
                  height: 50,
                  child: Material(
                    color: color2,
                    shape: StadiumBorder(),
                    elevation: 10,
                  ),
                ),
                childWhenDragging: SizedBox(
                  width: 50,
                  height: 50,
                  child: Material(
                    color: Colors.green,
                    shape: StadiumBorder(),
                    elevation: 10,
                  ),
                ),
                feedback: SizedBox(
                  width: 50,
                  height: 50,
                  child: Material(
                    color: color2.withOpacity(0.8),
                    shape: StadiumBorder(),
                    elevation: 10,
                  ),
                ),
              )
            ],
          ),
          DragTarget<Color>(
            // Apakah data yang dibawa ini akan diterima atau tidak
            onWillAccept: (value) => true,
            onAccept: (value) {
              isAccepted = true;
              targetColor = value;
            },
            // yang membuat drag target ini
            builder: (context, candidate, rejected) {
              return (isAccepted)
                  ? SizedBox(
                      width: 100,
                      height: 100,
                      child: Container(
                        child: Material(
                          child: Center(
                            child: Text(
                              faisal,
                              style: TextStyle(color: Colors.black),
                            ),
                          ),
                          color: targetColor,
                          shape: StadiumBorder(),
                        ),
                      ),
                    )
                  : SizedBox(
                      width: 100,
                      height: 100,
                      child: Material(
                        child: Center(
                          child: Text(
                            fsl,
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                        color: Colors.green,
                        shape: StadiumBorder(),
                      ),
                    );
            },
          ),
          RaisedButton(
            child: Text("Navigasi"),
            onPressed: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => Navigasi()));
            },
          )
        ],
      ),
    );
  }
}
