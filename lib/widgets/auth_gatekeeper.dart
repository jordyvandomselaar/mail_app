import 'package:flutter/material.dart';
import 'package:mail_app/entities/User.dart';

class AuthGatekeeper extends StatelessWidget {
  final User user;
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
