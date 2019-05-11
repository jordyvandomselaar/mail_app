import 'package:flutter/material.dart';

class GoogleSignInWidget extends StatelessWidget {
  final void Function() onPressed;

  GoogleSignInWidget({@required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return RaisedButton(child: Text("Login with Google"), onPressed: onPressed);
  }
}
