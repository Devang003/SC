
import 'package:devangtailor/AppState/AppState.dart';
import 'package:devangtailor/Reducer/user_reducer.dart';


AppState appReducer(AppState state, action) {
  return AppState(
    user: userReducer(state.user, action),
  );
}