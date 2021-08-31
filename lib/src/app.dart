import 'package:flutter/material.dart';
import 'package:learn_flutter/src/screens/home/home.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      theme: ThemeData(
        backgroundColor: Colors.cyan[50],
      ),
    );
  }
}
