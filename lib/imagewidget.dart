import 'package:flutter/material.dart';
import 'drag.dart';

class Images extends StatefulWidget {
  @override
  _ImagesState createState() => _ImagesState();
}

class _ImagesState extends State<Images> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("IMAGE WIDGET"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Center(
            child: Container(
              color: Colors.black,
              width: 200,
              height: 200,
              padding: EdgeInsets.all(10),
              child: Image(
                image: NetworkImage(
                    "https://www.udiscovermusic.com/wp-content/uploads/2019/04/Blackpink-2019-Kill-This-Love-Press-Shot-web-optimised-1000.jpg"),
                fit: BoxFit.cover,
                // Bisa ditambahin repeat
                repeat: ImageRepeat.repeat,
              ),
            ),
          ),
          RaisedButton(
            child: Text("ke DRAGABLE"),
            onPressed: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => Drags()));
            },
          ),
        ],
      ),
    );
  }
}
