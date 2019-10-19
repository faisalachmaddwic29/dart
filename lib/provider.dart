// Kita menggunakan Stateful karena yang akan berubah hanya componentnya saja
// kalau misalnya menggunakan stateles maka yang berubah akan semuaanya atau dari akarnya
// oleh karna itu dibutuhkan sharedState akan berfungsi yang akan dipake bareng bareng
// atau kita simpan boolean untuk ON OFF
// jadi ketika swtich di klik maka akan diberi tahu bahwa ada perubahan makan sharedstate ini akan memberitahu pada widget bahwa tombolnya pindah,
// shared state ini :
/*
// PENTING kalau di provider ini gaperlu lagi make stf karena pake stateless widget pun bisa
1. harus implementasi inteface yang namanya change Notifier
2. kalau di dart kita pakainya itu with bukan implement(untuk java)
3. cara kerjanya itu shared state akan memberi tau ke change notifier ini supaya widgetnya tau yang dibutuhkan
4. scaffold itu kan paling dekat untuk pembuatan widget makan harus dibungkus lagi dengan change notifier provider
5. change notifier provider ini yang akan menyediakan object dari shared state ini, shared state ini kan masih class, maka objectnya di change notifier provider
6. yang akan diubah ini seperti text, container, dan swicth ini harus dibungkus lagi dengan yang namanya Consumer
7. lets go coding
*/

import 'package:ericodermawan/shared/aplication_color_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'multi_provider.dart';

class Provider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ChangeNotifierProvider<AplicationColor>(
        builder: (ctx) => AplicationColor(),
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.black,
            title: Consumer<AplicationColor>(
              // consumer membutukan 3parameter
              // 1. context
              // 2. object
              // 3.
              builder: (ctx, aplicationColor, _) => Text(
                "PROVIDER",
                style: TextStyle(color: aplicationColor.color, fontSize: 20),
              ),
            ),
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Consumer<AplicationColor>(
                  builder: (ctx, aplicationColor, _) => AnimatedContainer(
                    margin: EdgeInsets.all(10),
                    width: 100,
                    height: 100,
                    color: aplicationColor.color,
                    duration: Duration(milliseconds: 500),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      child: Text("AB"),
                      margin: EdgeInsets.all(5),
                    ),
                    Consumer<AplicationColor>(
                      builder: (ctx, aplicationColor, _) => Switch(
                        value: aplicationColor.isLightBlue,
                        onChanged: (data) {
                          aplicationColor.isLightBlue = data;
                        },
                      ),
                    ),
                    Container(
                      child: Text("LB"),
                      margin: EdgeInsets.all(5),
                    ),
                  ],
                ),
                RaisedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => MultiProviderss()));
                  },
                  child: Text("Multi Provider"),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
