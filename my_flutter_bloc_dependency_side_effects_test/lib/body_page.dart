import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_flutter_bloc_dependency_side_effects_test/bloc/first_bloc.dart';
import 'package:my_flutter_bloc_dependency_side_effects_test/bloc/root_bloc.dart';
import 'package:my_flutter_bloc_dependency_side_effects_test/bloc/second_bloc.dart';

class BodyPage extends StatelessWidget {
  final int firstState;

  const BodyPage({Key? key, required this.firstState}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SecondBloc(
        firstState,
        BlocProvider.of<FirstBloc>(context),
      ),
      child: const _BodyPage(),
    );
  }
}

class _BodyPage extends StatefulWidget {
  const _BodyPage({Key? key}) : super(key: key);

  @override
  State<_BodyPage> createState() => _BodyPageState();
}

class _BodyPageState extends State<_BodyPage> {
  @override
  void initState() {
    super.initState();
    debugPrint('_BodyPageState::initState()');
  }

  @override
  void activate() {
    super.activate();
    debugPrint('_BodyPageState::activate()');
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    debugPrint('_BodyPageState::didChangeDependencies()');
  }

  @override
  void didUpdateWidget(covariant _BodyPage oldWidget) {
    super.didUpdateWidget(oldWidget);
    debugPrint('_BodyPageState::didUpdateWidget()');
  }

  @override
  void dispose() {
    super.dispose();
    debugPrint('_BodyPageState::dispose()');
  }

  @override
  void deactivate() {
    super.deactivate();
    debugPrint('_BodyPageState::deactivate()');
  }

  @override
  Widget build(BuildContext context) {
    debugPrint('_BodyPageState::build()');
    return Column(
      children: [
        BlocBuilder<FirstBloc, int>(builder: (context, state) {
          return Text('FirstBloc $state');
        }),
        BlocBuilder<SecondBloc, int>(builder: (context, state) {
          return Text('SecondBloc $state');
        }),
        SizedBox(
          height: 100,
          child: Wrap(
            children: [
              TextButton(
                onPressed: () {
                  context.read<SecondBloc>().add(OnClickFirst());
                },
                child: const Text('Add FirstBloc event'),
              ),
              TextButton(
                onPressed: () {
                  context.read<SecondBloc>().add(OnClickSecond());
                },
                child: const Text('Add SecondBloc event'),
              ),
              TextButton(
                onPressed: () {
                  context.read<RootBloc>().add(RootBlocEvent());
                },
                child: const Text('Add RootBloc event'),
              ),
            ],
          ),
        )
      ],
    );
  }
}
