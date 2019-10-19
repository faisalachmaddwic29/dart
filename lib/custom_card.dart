import 'package:flutter/material.dart';
import 'login_page.dart';

class CustomCard extends StatefulWidget {
  @override
  _CustomCardState createState() => _CustomCardState();
}

class _CustomCardState extends State<CustomCard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Card Custom",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.red,
      ),
      body: Stack(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Colors.pink[200], Colors.orange[700]],
              ),
            ),
          ),
          Center(
            child: SizedBox(
              width: MediaQuery.of(context).size.width * 0.8,
              height: MediaQuery.of(context).size.height * 0.7,
              child: Card(
                child: Stack(
                  children: <Widget>[
                    Opacity(
                      opacity: 1,
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          border: Border.all(color: Colors.black, width: 1),
                          boxShadow: <BoxShadow>[
                            BoxShadow(
                              color: Colors.red,
                              offset: Offset(6, 6),
                              blurRadius: 20,
                            )
                          ],
                          image: DecorationImage(
                              image: NetworkImage(
                                  "https://abeon-hosting.com/images/pattern-images-png-6.png"),
                              fit: BoxFit.cover),
                        ),
                      ),
                    ),
                    Column(
                      children: <Widget>[
                        Container(
                          height: MediaQuery.of(context).size.height * 0.3,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(4),
                                topRight: Radius.circular(4),
                              ),
                              image: DecorationImage(
                                  image: NetworkImage(
                                      "https://cdn.pixabay.com/photo/2018/08/18/02/20/nature-3614135_960_720.jpg"),
                                  fit: BoxFit.fill)),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 40),
                          // height: MediaQuery.of(context).size.height * 0.35,
                          child: Center(
                            child: Column(
                              children: <Widget>[
                                Text(
                                  "CIBAI",
                                  style: TextStyle(
                                      color: Colors.red,
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold),
                                ),
                                Container(
                                  margin: EdgeInsets.fromLTRB(0, 10, 0, 20),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Text(
                                        "Posted in ",
                                        style: TextStyle(
                                            color: Colors.grey,
                                            fontSize: 12,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        "CIBAI",
                                        style: TextStyle(
                                            color: Colors.red,
                                            fontSize: 12,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Spacer(
                                      flex: 10,
                                    ),
                                    Icon(
                                      Icons.thumb_up,
                                      size: 18,
                                      color: Colors.grey,
                                    ),
                                    Spacer(
                                      flex: 1,
                                    ),
                                    // text
                                    Text(
                                      "99",
                                      style: TextStyle(color: Colors.grey),
                                    ),
                                    Spacer(
                                      flex: 5,
                                    ),
                                    // icon
                                    Icon(
                                      Icons.comment,
                                      size: 18,
                                      color: Colors.grey,
                                    ),
                                    Spacer(
                                      flex: 1,
                                    ),
                                    // text
                                    Text(
                                      "888",
                                      style: TextStyle(color: Colors.grey),
                                    ),
                                    Spacer(
                                      flex: 10,
                                    ),
                                  ],
                                ),
                                RaisedButton(
                                  child: Text("Login Page"),
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => Lp()));
                                  },
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
