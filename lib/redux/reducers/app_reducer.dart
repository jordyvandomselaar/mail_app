import 'package:google_sign_in/google_sign_in.dart';
import 'package:mail_app/redux/reducers/users_reducer.dart';

class AppState {
  final GoogleSignInAccount user;

  AppState({this.user});
}

AppState appReducer(AppState state, dynamic action) =>
    AppState(user: usersReducer(state.user, action));
