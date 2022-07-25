import 'package:flutter/material.dart';

// StateProvider widget class created to listen useSelector changes and making change effect on child widget
class StateProvider extends StatefulWidget {
  final Widget Function(dynamic state) child;
  final void Function(dynamic state) provideState;
  const StateProvider(
      {Key? key, required this.provideState, required this.child})
      : super(key: key);

  @override
  State<StateProvider> createState() => _StateProviderState();
}

class _StateProviderState extends State<StateProvider> {
  dynamic state;

  @override
  void initState() {
    super.initState();
    // initialization settingWidgetState
    settingWidgetState();
  }

  // using this function to listen state change and reredering widget
  void settingWidgetState() {
    widget.provideState((state) => {
          setState(() => {this.state = state})
        });
  }

  @override
  Widget build(BuildContext context) {
    // returnning widget to build context
    return widget.child(state);
  }
}
