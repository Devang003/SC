import 'package:devangtailor/Models/User.dart';

class UserAction {
  final User user;

  UserAction(this.user);

  @override
  String toString() {
    return 'LoginAction{Action: $user';
  }
}

class ChangeUserAction {
  final User user;

  ChangeUserAction(this.user);

  @override
  String toString() {
    return 'ChangeLoginAction{Action: $user';
  }
}