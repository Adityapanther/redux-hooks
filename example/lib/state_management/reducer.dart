import 'package:redux_hooks_example/state_management/actions.dart';
import 'package:redux_hooks_example/state_management/application_state.dart';

ApplicationState counterReducer(ApplicationState state, action) {
  if (action == CounterActions.increment) {
    return ApplicationState(state.counter + 1);
  } else if (action == CounterActions.decrement) {
    return ApplicationState(state.counter - 1);
  }

  return ApplicationState(state.counter);
}
