import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:mail_app/redux/actions/user.dart';
import 'package:mail_app/redux/reducers/app_reducer.dart';
import 'package:mail_app/widgets/google_sign_in_widget.dart';

GoogleSignIn _googleSignIn = GoogleSignIn(scopes: [
  'email',
]);

class ConnectedGoogleSigninWidget extends StatelessWidget {
  ConnectedGoogleSigninWidget() {
    _googleSignIn.signInSilently(suppressErrors: true);
  }

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, GoogleSignInWidgetViewModel>(
      converter: (store) {
        return GoogleSignInWidgetViewModel(onPressed: () {
          _googleSignIn.signIn();
        }, constructorCallback: () {
          _googleSignIn.onCurrentUserChanged
              .listen((GoogleSignInAccount account) async {
            if (account != null) {
              store.dispatch(SetUserAction(account));
            } else {
              store.dispatch(SetUserAction(null));
            }
          });
        });
      },
      builder: (BuildContext context, GoogleSignInWidgetViewModel viewModel) {
        return GoogleSignInWidget(
          onPressed: viewModel.onPressed,
        );
      },
    );
  }
}

class GoogleSignInWidgetViewModel {
  final void Function() onPressed;
  final void Function() constructorCallback;

  GoogleSignInWidgetViewModel(
      {@required this.onPressed, @required this.constructorCallback}) {
    constructorCallback();
  }
}
