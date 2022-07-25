import 'package:redux/redux.dart';
import 'package:redux_hooks/src/redux_hooks_error.dart';
import 'package:redux_hooks/src/store_holder.dart';

class ReduxHooks {
  // initialize redux hooks with [store]
  static Future<void> setStore(dynamic store) async {
    StoreHolder.store = store;
  }

  // get redux store
  static Store getStore() {
    if (StoreHolder.store == null) {
      ReduxHooksError.hookInitError;
    }
    return StoreHolder.store;
  }

  // to get redux state with Callback [State] function
  static dynamic useSelector(dynamic state) {
    // this will provide initial state of store
    state(ReduxHooks.getStore().state);
    // this will provode state on each changes
    ReduxHooks.getStore().onChange.listen(state);
  }

  // to disptch any [action]
  static void useDispatch(dynamic action) {
    ReduxHooks.getStore().dispatch(action);
  }
}
