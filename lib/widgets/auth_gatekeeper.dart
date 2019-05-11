import 'package:flutter/material.dart';

class AuthGatekeeper extends StatelessWidget {
  final bool hasAccounts;
  final Widget child;
  final Widget authWidget;

  AuthGatekeeper(
      {@required this.child, @required this.authWidget, this.hasAccounts});

  @override
  Widget build(BuildContext context) {
    return hasAccounts ? child : authWidget;
  }
}
