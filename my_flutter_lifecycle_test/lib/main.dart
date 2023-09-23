import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_flutter_lifecycle_test/bloc/state_lifecycle_test_bloc.dart';
import 'package:my_flutter_lifecycle_test/bloc/state_lifecycle_test_state.dart';
import 'package:my_flutter_lifecycle_test/utils/route_observer_manager.dart';
import 'package:my_flutter_lifecycle_test/widget/home_page.dart';
import 'package:my_flutter_lifecycle_test/widget/my_inherited_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => StateLifecycleTestBloc(),
      child: MaterialApp(
        title: 'Flutter Demo',
        navigatorObservers: [RouteObserverManager.instance.routeObserver],
        theme: ThemeData(
          // This is the theme of your application.
          //
          // Try running your application with "flutter run". You'll see the
          // application has a blue toolbar. Then, without quitting the app, try
          // changing the primarySwatch below to Colors.green and then invoke
          // "hot reload" (press "r" in the console where you ran "flutter run",
          // or simply save your changes to "hot reload" in a Flutter IDE).
          // Notice that the counter didn't reset back to zero; the application
          // is not restarted.
          primarySwatch: Colors.blue,
        ),
        home: BlocBuilder<StateLifecycleTestBloc, StateLifecycleTestState>(
          buildWhen: (previous, current) =>
              previous.inheritedState != current.inheritedState,
          builder: (context, state) {
            return MyInheritedWidget(
              id: state.inheritedState,
              child:
                  BlocBuilder<StateLifecycleTestBloc, StateLifecycleTestState>(
                buildWhen: (previous, current) =>
                    previous.homePageWidgetParam != current.homePageWidgetParam,
                builder: (context, state) {
                  return HomePage(
                      homePageWidgetParam: state.homePageWidgetParam);
                },
              ),
            );
          },
        ),
      ),
    );
  }
}
