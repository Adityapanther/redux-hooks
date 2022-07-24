import 'package:redux/redux.dart';
import 'package:redux_hooks/src/store_holder.dart';

class ReduxHooks {
  // initialize redux hooks with [store]
  static setStore(store) {
    StoreHolder.store = store;
  }

  // get redux store
  static Store getStore() {
    return StoreHolder.store;
  }

  // get redux state with Callback [State] function
  static void useSelector(state) {
    state(ReduxHooks.getStore().state);
  }

  // disptch any [action]
  static void useDispatch(action) {
    ReduxHooks.getStore().dispatch(action);
  }
}
