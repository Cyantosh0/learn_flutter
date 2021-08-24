import 'package:flutter/material.dart';

class MyButton extends StatefulWidget {
  @override
  MyButtonState createState() {
    return MyButtonState();
  }
}

class MyButtonState extends State<MyButton> {
  int counter = 0;
  List<String> strings = ['My', 'Name', 'Is', "Santosh", "Shrestha"];
  String displayedString = "Hello World!";

  void onPressOfButton() {
    setState(() {
      displayedString = strings[counter];
      counter = counter < 4 ? counter + 1 : 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Stateful Widget"),
        backgroundColor: Colors.green,
      ),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(displayedString, style: TextStyle(fontSize: 40.0)),
              Padding(padding: EdgeInsets.all(10.0)),
              ElevatedButton(
                child: Text(
                  "Press me",
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: onPressOfButton,
              )
            ],
          ),
        ),
      ),
    );
  }
}
