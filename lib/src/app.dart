import 'package:flutter/material.dart';
import 'widgets/card_widget.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyCards(),
      theme: ThemeData(
        primarySwatch: Colors.green,
        accentColor: Colors.lightGreenAccent,
        backgroundColor: Colors.black12,
      ),
    );
  }
}
