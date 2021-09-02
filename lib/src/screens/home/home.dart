import 'package:flutter/material.dart';
import 'package:learn_flutter/src/screens/home/widgets/bottom_navigation_bar.dart';
import 'package:learn_flutter/src/screens/home/widgets/header.dart';
import 'package:learn_flutter/src/screens/home/widgets/page_description.dart';
import 'package:learn_flutter/src/screens/home/widgets/search_input.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      appBar: Header(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [PageDescription(), SearchInput()],
        ),
      ),
      bottomNavigationBar: CustomBottomNavigationBar(),
    );
  }
}
