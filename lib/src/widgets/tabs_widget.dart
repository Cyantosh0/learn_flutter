import 'package:flutter/material.dart';

class TabBarDemo extends StatelessWidget {
  const TabBarDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            bottom: const TabBar(
              tabs: [
                Tab(text: "Royal Enfield"),
                Tab(text: "Cross Fire"),
                Tab(text: "Duke"),
              ],
            ),
            title: const Text('Tabs Demo'),
          ),
          body: TabBarView(
            children: [
              MyTab(
                description:
                    "Royal Enfield is an Indian multinational motorcycle manufacturing company headquartered in Chennai, Tamil Nadu, India.",
                imagePath: "images/bullet.png",
              ),
              MyTab(
                description:
                    "CrossFire is an online tactical first-person shooter game developed by Smilegate Entertainment for Microsoft Windows.",
                imagePath: "images/crossfire.png",
              ),
              MyTab(
                description:
                    "Duke is a male title either of a monarch ruling over a duchy, or of a member of royalty, or nobility.",
                imagePath: "images/duke.jpg",
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MyTab extends StatelessWidget {
  final String description;
  final String imagePath;

  MyTab({required this.description, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
                height: 400, child: Image(image: AssetImage(this.imagePath))),
            Text(this.description)
          ],
        ),
      ),
    );
  }
}
