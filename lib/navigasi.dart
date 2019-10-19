import 'package:flutter/material.dart';
import 'appbar_gradasi.dart';

class Navigasi extends StatefulWidget {
  @override
  _NavigasiState createState() => _NavigasiState();
}

class _NavigasiState extends State<Navigasi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Navigasi"),
      ),
      body: AppbarGrad(),
    );
  }
}
