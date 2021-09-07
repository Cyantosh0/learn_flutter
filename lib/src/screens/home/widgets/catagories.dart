import 'package:flutter/material.dart';

class Catagories extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      width: double.infinity,
      child: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
              bottom: new TabBar(
            tabs: [
              Tab(text: "Recommendation"),
              Tab(text: "Near You"),
              Tab(text: "Recently Added"),
            ],
          )),
          body: TabBarView(
            children: [Recommendations(), Recommendations(), Recommendations()],
          ),
        ),
      ),
    );
  }
}

class Recommendations extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text('This is recommendation section'),
    );
  }
}
