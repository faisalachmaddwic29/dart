import 'package:flutter/material.dart';
import 'card_grab.dart';

class AppbarGrad extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Appbar Gradasi",
          style: TextStyle(color: Colors.white),
        ),
        leading: Icon(Icons.adb),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.settings),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.exit_to_app),
            onPressed: () {},
          ),
        ],
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [Colors.white, Colors.black],
                begin: FractionalOffset.topLeft,
                end: FractionalOffset.bottomRight),
            image: DecorationImage(
                image: AssetImage("assets/patern.jpg"),
                fit: BoxFit.none,
                repeat: ImageRepeat.repeat),
          ),
        ),
      ),
      body: Center(
        child: RaisedButton(
          child: Text("Card GRAB"),
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Cards()));
          },
        ),
      ),
    );
  }
}
