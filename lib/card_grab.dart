import 'package:flutter/material.dart';
import 'text_field.dart';

class Cards extends StatefulWidget {
  @override
  _CardsState createState() => _CardsState();
}

class _CardsState extends State<Cards> {
  void pindahTextField() {
    Navigator.push(context, MaterialPageRoute(builder: (context) => Fields()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      appBar: AppBar(
        title: Text("Cards"),
      ),
      body: Container(
        margin: EdgeInsets.all(10),
        child: ListView(
          children: <Widget>[
            buildCard(Icons.account_box, "Account Box"),
            buildCard(Icons.adb, "Serangga Android"),
            buildCard(Icons.contact_mail, "Contact Email"),
            buildCard(Icons.cake, "Ulang Tahun"),
            GestureDetector(
              onDoubleTap: pindahTextField,
              child: Card(
                elevation: 5,
                child: Row(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.all(10),
                      child: Icon(Icons.camera),
                    ),
                    Text("Text Field"),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

Card buildCard(IconData iconData, String text) {
  return Card(
    // Elevation adalah jarak dari background ke CARD
    elevation: 5,
    child: Row(
      children: <Widget>[
        Container(
          margin: EdgeInsets.all(5),
          child: Icon(iconData),
        ),
        Text(text),
      ],
    ),
  );
}
