import 'package:google_sign_in/google_sign_in.dart';
import 'package:mail_app/redux/actions/user.dart';

GoogleSignInAccount usersReducer(GoogleSignInAccount user, dynamic action) {
  if (action is SetUserAction) {
    return action.user;
  }

  return user;
}
