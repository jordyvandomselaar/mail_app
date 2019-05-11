import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Inbox"),
        ),
        body: Column(
          children: <Widget>[Text("Welcome back!")],
        ),
      ),
    );
  }
}
