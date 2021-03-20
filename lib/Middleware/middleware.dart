import 'package:devangtailor/Action/user_action.dart';
import 'package:devangtailor/AppState/AppState.dart';
import 'package:devangtailor/Models/User.dart';
import 'package:redux/redux.dart';

List<Middleware<AppState>> createStoreMiddleware() {
  final loginUser = _loginUser();

  return [
    TypedMiddleware<AppState, UserAction>(loginUser),
  //  new userMiddleware.printer()
  ];
}

Middleware<AppState> _loginUser() {
  return (Store<AppState> store, action, NextDispatcher next) async {
    next(action);
    final User user = store.state.user;
    Map map = {'email': user.email, 'password': user.password};

    _callback () {
      print('failed to login');
      store.dispatch(ChangeUserAction(User(error: 'Email or password is incorrect', loading: false)));
    }
    print(store.state);
  };
}