import 'package:flutter/material.dart';

class MyCards extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final double myTextSize = 30.0;
    final double myIconSize = 40.0;
    final TextStyle myTextStyle =
        TextStyle(color: Colors.grey, fontSize: myTextSize);

    var column = Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        MyCard(
            title: Text(
              "Favorite",
              style: myTextStyle,
            ),
            icon: Icon(Icons.favorite, size: myIconSize, color: Colors.red)),
        MyCard(
            title: Text(
              "Alarm",
              style: myTextStyle,
            ),
            icon: Icon(Icons.alarm, size: myIconSize, color: Colors.blue)),
        MyCard(
            title: Text(
              "Airport Shuttle",
              style: myTextStyle,
            ),
            icon: Icon(Icons.airport_shuttle,
                size: myIconSize, color: Colors.amber)),
        MyCard(
            title: Text(
              "Done",
              style: myTextStyle,
            ),
            icon: Icon(Icons.done, size: myIconSize, color: Colors.green)),
      ],
    );

    return Scaffold(
      appBar: AppBar(
        title: Text("Stateless Widget"),
      ),
      body: Container(
        padding: const EdgeInsets.only(bottom: 2.0),
        child: Center(
          child: SingleChildScrollView(child: column),
        ),
      ),
    );
  }
}

class MyCard extends StatelessWidget {
  final Widget icon;
  final Widget title;

  MyCard({required this.title, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(bottom: 1.0),
      child: Card(
        child: Container(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: <Widget>[this.title, this.icon],
          ),
        ),
      ),
    );
  }
}
