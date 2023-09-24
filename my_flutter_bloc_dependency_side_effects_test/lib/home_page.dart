import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_flutter_bloc_dependency_side_effects_test/bloc/first_bloc.dart';
import 'package:my_flutter_bloc_dependency_side_effects_test/body_page.dart';
import 'package:my_flutter_bloc_dependency_side_effects_test/my_inherited_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) {
        return FirstBloc(0);
      },
      child: const _HomePage(),
    );
  }
}

class _HomePage extends StatefulWidget {
  const _HomePage({Key? key}) : super(key: key);

  @override
  State<_HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<_HomePage> {
  @override
  void initState() {
    super.initState();
    debugPrint('_HomePageState::initState()');
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    debugPrint('_HomePageState::didChangeDependencies()');
  }

  @override
  void didUpdateWidget(covariant _HomePage oldWidget) {
    super.didUpdateWidget(oldWidget);
    debugPrint('_HomePageState::didUpdateWidget()');
  }

  @override
  void dispose() {
    debugPrint('_HomePageState::dispose()');
    super.dispose();
  }

  @override
  void activate() {
    super.activate();
    debugPrint('_HomePageState::activate()');
  }

  @override
  void deactivate() {
    super.deactivate();
    debugPrint('_HomePageState::deactivate()');
  }

  @override
  Widget build(BuildContext context) {
    debugPrint('_HomePageState::build()');
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bloc refer to each other'),
      ),
      body: BlocBuilder<FirstBloc, int>(
        builder: (context, state) => MyInheritedWidget(
          id: state,
          child: BodyPage(
            firstState: state,
          ),
        ),
      ),
    );
  }
}
