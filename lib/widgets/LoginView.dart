import 'package:flutter/material.dart';

class LoginView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login"),
      ),
      body: Column(
        children: <Widget>[
          Center(
            child: Text("Login with Google",
                style: Theme.of(context).textTheme.headline),
          )
        ],
      ),
    );
  }
}
