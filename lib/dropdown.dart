import 'package:flutter/material.dart';

class DropDos extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter DropdownButton Tutorial',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter DropdownButton Tutorial by Woolha.com'),
        ),
        body: Center(
          child: DropDown(),
        ),
      ),
    );
  }
}

class DropDown extends StatefulWidget {
  @override
  _DropDownState createState() {
    return _DropDownState();
  }
}

class _DropDownState extends State<DropDown> {
  String _value;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: DropdownButton<String>(
        items: [
          DropdownMenuItem<String>(
            child: Text('Item 1'),
            value: 'one',
          ),
          DropdownMenuItem<String>(
            child: Text('Item 2'),
            value: 'two',
          ),
          DropdownMenuItem<String>(
            child: Text('Item 3'),
            value: 'three',
          ),
        ],
        onChanged: (String value) {
          setState(() {
            _value = value;
          });
        },
        hint: Text('Select Item'),
        value: _value,
      ),
    );
  }
}
