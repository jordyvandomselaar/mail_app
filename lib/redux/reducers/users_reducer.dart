import 'package:mail_app/entities/User.dart';
import 'package:mail_app/redux/actions/user.dart';

User usersReducer(User user, dynamic action) {
  if (action is SetUserAction) {
    return action.user;
  }

  return user;
}
