import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:mail_app/redux/reducers/app_reducer.dart';
import 'package:mail_app/widgets/auth_gatekeeper.dart';
import 'package:mail_app/widgets/login_view.dart';

class ConnectedAuthGatekeeper extends StatelessWidget {
  final Widget child;

  ConnectedAuthGatekeeper({this.child});

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, bool>(
      converter: (store) {
        return store.state.accounts.isNotEmpty;
      },
      builder: (context, hasAccounts) {
        return AuthGatekeeper(
          child: child,
          authWidget: LoginView(),
          hasAccounts: hasAccounts,
        );
      },
    );
  }
}
