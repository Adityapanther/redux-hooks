import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'package:redux_hooks/redux_hooks.dart';
import 'package:redux_hooks_example/state_management/actions.dart';
import 'package:redux_hooks_example/state_management/application_state.dart';
import 'package:redux_hooks_example/state_management/reducer.dart';

Future<void> main() async {
  final store = Store<ApplicationState>(counterReducer,
      initialState: ApplicationState.initialState());
  await ReduxHooks.setStore(store);
  runApp(MyApp(
    store: store,
  ));
}

class MyApp extends StatelessWidget {
  final Store<ApplicationState> store;
  const MyApp({Key? key, required this.store}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StoreProvider<ApplicationState>(
        store: store,
        child: MaterialApp(
          initialRoute: Home.routeName,
          routes: {Home.routeName: (context) => const Home()},
        ));
  }
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  static const routeName = '/home';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Redux hooks Plugin example app'),
      ),
      body: Center(
          child: StateProvider(
              provideState: ReduxHooks.useSelector,
              child: ((state) {
                return Text("${state.counter}");
              }))),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          ReduxHooks.useDispatch(CounterActions.increment);
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
