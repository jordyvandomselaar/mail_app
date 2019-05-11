import 'package:mail_app/entities/User.dart';
import 'package:mail_app/redux/reducers/users_reducer.dart';

class AppState {
  final User user;

  AppState({this.user});
}

AppState appReducer(AppState state, dynamic action) =>
    AppState(user: usersReducer(state.user, action));
