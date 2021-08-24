import 'package:flutter/material.dart';
import 'widgets/button_widget.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyButton(),
      theme: ThemeData(
        primarySwatch: Colors.green,
        accentColor: Colors.lightGreenAccent,
        backgroundColor: Colors.black12,
      ),
    );
  }
}
