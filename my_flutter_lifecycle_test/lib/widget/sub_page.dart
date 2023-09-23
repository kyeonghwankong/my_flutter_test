import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_flutter_lifecycle_test/bloc/state_lifecycle_test_bloc.dart';
import 'package:my_flutter_lifecycle_test/widget/my_dialog.dart';

class SubPage extends StatelessWidget {
  const SubPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lifecycle test'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: Center(
        child: SizedBox(
          height: 100,
          child: Wrap(
            children: [
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const SubPage()),
                  );
                },
                child: const Text('New page'),
              ),
              TextButton(
                onPressed: () {
                  showMyDialog(context);
                },
                child: const Text('Dialog'),
              ),
              TextButton(
                onPressed: () {
                  context
                      .read<StateLifecycleTestBloc>()
                      .add(ChangeInheritedWidgetEvent());
                },
                child: const Text('Change InheritedWidget'),
              ),
              TextButton(
                onPressed: () {
                  context
                      .read<StateLifecycleTestBloc>()
                      .add(ChangeConstructorParamEvent());
                },
                child: const Text('Change param of constructor'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
