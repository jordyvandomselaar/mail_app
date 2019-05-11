import 'package:mail_app/entities/connection.dart';
import 'package:meta/meta.dart';

class Account {
  final String username;
  final String password;
  final Connection connection;

  Account(
      {@required this.username,
      @required this.password,
      @required this.connection});
}
