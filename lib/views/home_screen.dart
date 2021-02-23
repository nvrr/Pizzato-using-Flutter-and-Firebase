import 'package:flutter/material.dart';
import 'package:pizza/helpers/headers.dart';
import 'package:pizza/helpers/middle.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Headers().appBar(context),
            Headers().headerText(),
            Headers().headerMenu(context),
            Divider(),
            MiddleHelpers().textFav(),
            MiddleHelpers().dataFav(context, 'favourite')
            ],
        )
      ),
    );
  }
}