import 'package:ericodermawan/dropdown.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'konsepcolumn.dart';

// Untuk tidak Landscape
void main() {
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
      .then((_) {
    runApp(MyApp());
  });
}

// void main() {
//   runApp(MyApp());
// }

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Saya Belajar Flutter"),
        ),
        body: Texta(),
      ),
    );
  }
}

class Texta extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Container(
            width: 200,
            height: 100,
            color: Colors.blue,
            child: GestureDetector(
              onTap: () {
                Route route =
                    MaterialPageRoute(builder: (context) => KonsepColumn());
                Navigator.push(context, route);
                // Cara 2
                // Navigator.of(context).push(
                //     MaterialPageRoute(builder: (context) => KonsepColumn()));
              },
              child: Text(
                "Saya mau mencoba coding tanpa melihat documentasi",
                // textAlign: TextAlign.center, Mengatur menjadi rata tengah
                style: TextStyle(
                  color: Colors.black,
                  fontStyle: FontStyle.italic,
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                ),
                // maxLines: 2, = jumlah Baris
                // = textoverflow ada clip = memotong dan elipsis merubah textnya menjadi titik titik
                // overflow: TextOverflow.ellipsis,
                //  = tidak turun kebawah dan default nya adalah true
                softWrap: false,
              ),
            ),
          ),
          Container(
            child: GestureDetector(
              child: Text("Dropdown"),
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => DropDos()));
              },
            ),
          ),
        ],
      ),
    );
  }
}
