import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';

class AuthGatekeeper extends StatelessWidget {
  final GoogleSignInAccount user;
  final Widget child;
  final Widget authWidget;

  AuthGatekeeper({@required this.child, @required this.authWidget, this.user});

  @override
  Widget build(BuildContext context) {
    if (user == null) {
      return authWidget;
    }

    return child;
  }
}
