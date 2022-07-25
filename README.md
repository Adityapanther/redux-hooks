# redux_hooks

A Redux Hooks for flutter project.

<br>

# Why this library

I was working on one of my project on flutter And I saw that there is requirement to use `useSelector` and `useDispatch` function in my project because I was using redux as state container then I started searching library for it on [pub.dev](https://pub.dev) and I found a library  [flutter_redux_hooks](https://pub.dev/packages/flutter_redux_hooks) so, I added in my project `pubspec.yaml` after this when I ran my project I get a error that my project is dependent on [redux 5.0.0](https://pub.dev/packages/redux). so, i went on repository and saw that this library has no update from last 18 month. so I decided that I will fork this repo and I will provide update to it and will publish with diffrent name but after cloneing this repo I was unable to run this project in editor, after spending more than 4hr I decided that I will write my own library for it and now I am here  :smile: .

<br>

# issues

please report any issue on [bug reports](https://github.com/Adityapanther/redux-hooks)

<br>






# Getting Started


### 1) initialize redux hooks in `main` function

```dart
Future<void> main() async {
  final store = Store<ApplicationState>(counterReducer,
      initialState: ApplicationState.initialState());
      // redux hooks init 
  await ReduxHooks.setStore(store);
  runApp(MyApp(
    store: store,
  ));
}
```


### 2) dispacth any action

```dart
class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  static const routeName = '/home';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
            // dispaching action with useDispatch function
          ReduxHooks.useDispatch(CounterActions.increment);
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
```



### 3) listen state with `StateProvider` widget

```dart
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
        // listenning changes with stateProvider widget
          child: StateProvider(
              provideState: ReduxHooks.useSelector,
              child: ((state) {
                return Text("${state.counter}");
              }))),
    );
  }
}
```

<br>


#  Example

for full example please visit: - https://github.com/Adityapanther/redux-hooks/tree/main/example

<br>


# Contributions

I am welcoming contributor and contribution in this library

<br>


# Contributor

- [Aditya panther](https://github.com/Adityapanther)




