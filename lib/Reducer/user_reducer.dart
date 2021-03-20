

import 'package:devangtailor/Action/user_action.dart';
import 'package:devangtailor/Models/User.dart';
import 'package:redux/redux.dart';

final userReducer = combineReducers<User>([
  TypedReducer<User, UserAction>(_UserReducer),
  TypedReducer<User, ChangeUserAction>(_changeUserReducer),
]);

User _UserReducer(User login, UserAction action) {
  return action.user ?? User(email: '', password: '');
}

User _changeUserReducer(User login, ChangeUserAction action) {
  return action.user;
}