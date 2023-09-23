import 'package:flutter/material.dart';

class MyInheritedWidget extends InheritedWidget {
  final int id;

  const MyInheritedWidget({
    Key? key,
    required this.id,
    required Widget child,
  }) : super(key: key, child: child);

  static MyInheritedWidget of(BuildContext context) {
    final MyInheritedWidget? result =
        context.dependOnInheritedWidgetOfExactType<MyInheritedWidget>();
    assert(result != null, 'No MyInheritedWidget found in context');
    return result!;
  }

  @override
  bool updateShouldNotify(MyInheritedWidget oldWidget) {
    return oldWidget.id != id;
  }
}
