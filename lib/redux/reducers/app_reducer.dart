import 'package:mail_app/entities/account.dart';
import 'package:meta/meta.dart';
import 'accounts_reducer.dart';

class AppState {
  final List<Account> accounts;

  AppState({@required this.accounts});
}

AppState appReducer(AppState state, dynamic action) {
  return AppState(accounts: accountsReducer(state.accounts, action));
}
