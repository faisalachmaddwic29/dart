import 'package:flutter/material.dart';
import 'media_querry.dart';

class Fields extends StatefulWidget {
  @override
  _FieldsState createState() => _FieldsState();
}

class _FieldsState extends State<Fields> {
  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Text Field"),
      ),
      body: Container(
        margin: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            TextField(
              decoration: InputDecoration(
                // Fill Color untuk mewarnai isinya
                fillColor: Colors.green[50],
                filled: true,
                hintText: "Alamat Email Lengkap",
                labelText: "Alamat Email",
                labelStyle: TextStyle(
                    fontWeight: FontWeight.bold, fontStyle: FontStyle.italic),
                icon: Icon(Icons.adb),
                // Suffix dibelakang
                suffix: Container(
                  width: 10,
                  height: 10,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.green),
                ),
                // Jika Prefix aja maka bisa berisi Widget
                prefix: Container(
                  width: 10,
                  height: 10,
                  margin: EdgeInsets.only(right: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.red,
                  ),
                ),
                prefixIcon: Icon(
                  Icons.contact_mail,
                  color: Colors.red,
                ),
                // prefixText: "Email : ",
                // prefixStyle: TextStyle(color: Colors.black),
                // Bisa input border
                // border: InputBorder.none,
                // bisa menggunakan outlineborder
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              maxLength: 10,
              // maxLines: 1,
              obscureText: true,
              onChanged: (data) {
                setState(() {});
              },
              controller: controller,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Mediaq()));
              },
              child: Text(controller.text),
            )
          ],
        ),
      ),
    );
  }
}
