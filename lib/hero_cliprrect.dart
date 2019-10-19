import 'package:ericodermawan/provider.dart';
import 'package:flutter/material.dart';

class HeroClip extends StatefulWidget {
  @override
  _HeroClipState createState() => _HeroClipState();
}

class _HeroClipState extends State<HeroClip> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("HERO AND CLIPRRECT"),
      ),
      body: Column(
        children: <Widget>[
          GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => SecondPage()));
            },
            child: Hero(
              tag: 'pp',
              child: ClipRRect(
                borderRadius: BorderRadius.circular(50),
                child: Container(
                  width: 100,
                  height: 100,
                  color: Colors.yellow,
                  child: Image(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                        "https://cdn.pixabay.com/photo/2016/03/31/23/40/boy-1297759_960_720.png"),
                  ),
                ),
              ),
            ),
          ),
          RaisedButton(
            child: Text("Appbar Custom(preferez"),
            onPressed: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => Provider()));
            },
          )
        ],
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("HERO AND CLIPRRECT"),
      ),
      body: Center(
        child: Hero(
          tag: 'pp',
          child: ClipRRect(
            borderRadius: BorderRadius.circular(150),
            child: Container(
              width: 300,
              height: 300,
              color: Colors.yellow,
              child: Image(
                fit: BoxFit.cover,
                image: NetworkImage(
                    "https://cdn.pixabay.com/photo/2016/03/31/23/40/boy-1297759_960_720.png"),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
