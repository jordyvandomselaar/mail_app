import 'package:mail_app/entities/account.dart';
import 'package:mail_app/redux/actions/account_actions.dart';

List<Account> accountsReducer(List<Account> accounts, dynamic action) {
  if (action is AddAccountAction) {
    return List.from(accounts)..add(action.account);
  }

  return accounts;
}
