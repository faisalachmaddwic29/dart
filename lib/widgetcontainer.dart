import 'package:flutter/material.dart';
import 'stlwidget.dart';

class WidgetCons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Latihan Container"),
      ),
      body: Container(
        color: Colors.red,
        margin: EdgeInsets.fromLTRB(10, 15, 20, 25),
        // padding: EdgeInsets.all(20),
        child: Container(
          child: Center(
            child: RaisedButton(
              color: Colors.red,
              hoverColor: Colors.green,
              focusColor: Colors.green[100],
              splashColor: Colors.orange[100],
              highlightColor: Colors.black,
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => WidgetStl()));
              },
              child: Text(
                "STATELESS WIDGET DAN STATEFULL WIDGET",
                style: TextStyle(color: Colors.white),
              ),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
            ),
          ),
          margin: EdgeInsets.all(20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            // Nambahin border bawahnya aja
            // border: Border(
            //   left: BorderSide(
            //     //                   <--- left side
            //     color: Colors.black,
            //     width: 3.0,
            //   ),
            //   top: BorderSide(
            //     //                    <--- top side
            //     color: Colors.black,
            //     width: 3.0,
            //   ),
            // ),
            border: new Border.all(width: 5.0, color: Colors.purple),
            boxShadow: <BoxShadow>[
              BoxShadow(
                  offset: Offset(5, 10), color: Colors.black, blurRadius: 1)
            ],
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: <Color>[
                Colors.amber,
                Colors.red,
              ],
            ),
          ),
        ),
      ),
    );
  }
}
