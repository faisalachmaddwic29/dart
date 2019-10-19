import 'package:flutter/material.dart';

class MultiProviderss extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            title: Text(
              "Multi Provider",
              style: TextStyle(color: Colors.amber, fontSize: 15),
            ),
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Text("Balance"),
                    Container(
                      child: Align(
                        alignment: Alignment.centerRight,
                        child: Text(
                          "10000",
                          style: TextStyle(
                              color: Colors.purple,
                              fontWeight: FontWeight.w700),
                        ),
                      ),
                      width: 150,
                      height: 30,
                      margin: EdgeInsets.all(5),
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        color: Colors.purple,
                        border: Border.all(color: Colors.black, width: 5),
                      ),
                    ),
                  ],
                ),
                Text("Balance"),
                Container(
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      "10000",
                      style: TextStyle(
                          color: Colors.amber, fontWeight: FontWeight.w700),
                    ),
                  ),
                  width: 150,
                  height: 30,
                  margin: EdgeInsets.all(5),
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    color: Colors.amber,
                    border: Border.all(color: Colors.black, width: 5),
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
