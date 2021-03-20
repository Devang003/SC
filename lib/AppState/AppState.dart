import 'package:devangtailor/Models/User.dart';

class AppState {
  final User user;

  AppState({this.user});

  AppState copyWith({User user}) {
    return AppState(user : user ?? this.user);
  }
}