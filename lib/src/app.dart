import 'package:flutter/material.dart';
import 'widgets/grid_layout_widget.dart';

class App extends StatelessWidget {
  final MyGridView myGridView = MyGridView();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("GridView Example"),
        ),
        body: myGridView.build(),
      ),
    );
  }
}
