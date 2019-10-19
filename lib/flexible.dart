import 'package:flutter/material.dart';
import 'stackdanalign.dart';

class FlexibleS extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flexible Layout"),
      ),
      body: Column(
        children: <Widget>[
          Flexible(
            flex: 1,
            child: Row(
              children: <Widget>[
                Flexible(
                  flex: 1,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.purple,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(width: 2, color: Colors.white),
                      boxShadow: <BoxShadow>[
                        BoxShadow(
                            offset: Offset(5, 10),
                            color: Colors.black,
                            blurRadius: 10)
                      ],
                    ),
                    margin: EdgeInsets.all(10),
                  ),
                ),
                Flexible(
                  flex: 1,
                  child: Container(
                    margin: EdgeInsets.all(10),
                    color: Colors.green[100],
                  ),
                ),
                Flexible(
                  flex: 1,
                  child: Container(
                    margin: EdgeInsets.all(10),
                    color: Colors.purple[100],
                  ),
                ),
              ],
            ),
          ),
          Flexible(
            flex: 2,
            child: Container(
              margin: EdgeInsets.all(10),
              child: Center(
                child: FlatButton(
                  child: Text("Membahas Stack"),
                  onPressed: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => Stacks()));
                  },
                ),
              ),
              decoration: BoxDecoration(
                  color: Colors.green[200],
                  boxShadow: <BoxShadow>[
                    BoxShadow(
                        color: Colors.orange,
                        offset: Offset(2, 2),
                        blurRadius: 10)
                  ],
                  border: Border.all(width: 10, color: Colors.greenAccent),
                  borderRadius: BorderRadius.circular(20)),
            ),
          ),
          Flexible(
            flex: 1,
            child: Container(
              color: Colors.yellow[300],
            ),
          )
        ],
      ),
    );
  }
}
