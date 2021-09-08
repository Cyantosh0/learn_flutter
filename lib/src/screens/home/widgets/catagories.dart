import 'package:flutter/material.dart';

class Catagories extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: double.infinity,
      child: DefaultTabController(
        length: 3,
        child: Scaffold(
          backgroundColor: Colors.lightBlue[200],
          appBar: new TabBar(labelColor: Colors.black, tabs: [
            MyTab(title: 'Recommendation'),
            MyTab(title: 'Near You'),
            MyTab(title: 'Recently Added')
          ]),
          body: TabBarView(
            children: [Recommendations(), NearYou(), RecentlyAdded()],
          ),
        ),
      ),
    );
  }
}

class MyTab extends StatelessWidget {
  final String title;
  MyTab({required this.title});

  @override
  Widget build(BuildContext context) {
    return Tab(
        child: Text(this.title,
            style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18)));
  }
}

class Recommendations extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.cyan[50],
      height: 50,
      child: Text('This is recommendation section'),
    );
  }
}

class NearYou extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.cyan[50],
      height: 50,
      child: Text('This is near you section'),
    );
  }
}

class RecentlyAdded extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.cyan[50],
      height: 50,
      child: Text('This is recently added section'),
    );
  }
}
