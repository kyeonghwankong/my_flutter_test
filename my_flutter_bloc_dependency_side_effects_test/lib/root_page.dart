import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_flutter_bloc_dependency_side_effects_test/bloc/root_bloc.dart';
import 'package:my_flutter_bloc_dependency_side_effects_test/home_page.dart';

class RootPage extends StatelessWidget {
  const RootPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RootBloc, int>(builder: (context, state) {
      return HomePage(
        key: Key('$state'),
      );
    });
  }
}
