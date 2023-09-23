import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_flutter_lifecycle_test/bloc/state_lifecycle_test_bloc.dart';
import 'package:my_flutter_lifecycle_test/bloc/widget_lifecycle_bloc.dart';
import 'package:my_flutter_lifecycle_test/bloc/widget_lifecycle_event.dart';
import 'package:my_flutter_lifecycle_test/bloc/widget_lifecycle_state.dart';
import 'package:my_flutter_lifecycle_test/widget/my_dialog.dart';
import 'package:my_flutter_lifecycle_test/utils/route_observer_manager.dart';
import 'package:my_flutter_lifecycle_test/widget/my_inherited_widget.dart';
import 'package:my_flutter_lifecycle_test/widget/sub_page.dart';

class HomePage extends StatelessWidget {
  final int homePageWidgetParam;

  const HomePage({
    Key? key,
    required this.homePageWidgetParam,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<WidgetLifecycleBloc>(
      create: (context) => WidgetLifecycleBloc(),
      child: _HomePageView(homePageWidgetParam),
    );
  }
}

class _HomePageView extends StatefulWidget {
  final int homePageWidgetParam;

  const _HomePageView(this.homePageWidgetParam);

  @override
  State<_HomePageView> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<_HomePageView>
    with WidgetsBindingObserver, TickerProviderStateMixin, RouteAware {
  late final AppLifecycleListener _listener;
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
    WidgetsBinding.instance.addObserver(this);
    _initAppLifecycleListener();
    context
        .read<WidgetLifecycleBloc>()
        .add(OnListenerStatefulLifecycle(WidgetLifecycle.initState));
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    RouteObserverManager.instance.routeObserver
        .subscribe(this, ModalRoute.of(context)!);
    context
        .read<WidgetLifecycleBloc>()
        .add(CheckMyInheritedWidgetId(MyInheritedWidget.of(context).id));
    context.read<WidgetLifecycleBloc>().add(
        OnListenerStatefulLifecycle(WidgetLifecycle.didChangeDependencies));
  }

  @override
  void didUpdateWidget(covariant _HomePageView oldWidget) {
    super.didUpdateWidget(oldWidget);
    context
        .read<WidgetLifecycleBloc>()
        .add(OnListenerStatefulLifecycle(WidgetLifecycle.didUpdateWidget));
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    RouteObserverManager.instance.routeObserver.unsubscribe(this);
    _listener.dispose();
    context
        .read<WidgetLifecycleBloc>()
        .add(OnListenerStatefulLifecycle(WidgetLifecycle.dispose));
    super.dispose();
  }

  @override
  void didPop() {
    super.didPop();
    context
        .read<WidgetLifecycleBloc>()
        .add(OnListenerRouteAwareEvent(RouteAwareState.didPop));
  }

  @override
  void didPopNext() {
    super.didPopNext();
    context
        .read<WidgetLifecycleBloc>()
        .add(OnListenerRouteAwareEvent(RouteAwareState.didPopNext));
  }

  @override
  void didPush() {
    super.didPush();
    context
        .read<WidgetLifecycleBloc>()
        .add(OnListenerRouteAwareEvent(RouteAwareState.didPush));
  }

  @override
  void didPushNext() {
    super.didPushNext();
    context
        .read<WidgetLifecycleBloc>()
        .add(OnListenerRouteAwareEvent(RouteAwareState.didPushNext));
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    super.didChangeAppLifecycleState(state);
    context
        .read<WidgetLifecycleBloc>()
        .add(OnChangeWidgetsBindingObserver(state));
  }

  @override
  Widget build(BuildContext context) {
    context
        .read<WidgetLifecycleBloc>()
        .add(OnListenerStatefulLifecycle(WidgetLifecycle.build));

    return Scaffold(
      appBar: AppBar(
        title: const Text('Lifecycle test'),
        bottom: TabBar(
          controller: _tabController,
          tabs: const <Widget>[
            Tab(text: 'AppLifecycleListener'),
            Tab(text: 'WidgetBindingObserver'),
          ],
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: [
                BlocBuilder<WidgetLifecycleBloc, WidgetLifecycleState>(
                  buildWhen: (previous, current) =>
                      previous.lifecycleListenerHistory !=
                      current.lifecycleListenerHistory,
                  builder: (context, state) {
                    return ListView(
                      children: state.lifecycleListenerHistory
                          .map((e) => Text(e))
                          .toList(),
                    );
                  },
                ),
                BlocBuilder<WidgetLifecycleBloc, WidgetLifecycleState>(
                    buildWhen: (previous, current) =>
                        previous.widgetBindingHistory !=
                        current.widgetBindingHistory,
                    builder: (context, state) {
                      return ListView(
                        children: state.widgetBindingHistory
                            .map((e) => Text(e))
                            .toList(),
                      );
                    }),
              ],
            ),
          ),
          SizedBox(
            height: 100,
            child: Wrap(
              children: [
                TextButton(
                  onPressed: () {
                    context
                        .read<WidgetLifecycleBloc>()
                        .add(OnClickButton('New page'));
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const SubPage()),
                    );
                  },
                  child: const Text('New page'),
                ),
                TextButton(
                  onPressed: () {
                    context
                        .read<WidgetLifecycleBloc>()
                        .add(OnClickButton('Dialog'));
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
          )
        ],
      ),
    );
  }

  void _initAppLifecycleListener() {
    _listener = AppLifecycleListener(
      onDetach: () => context
          .read<WidgetLifecycleBloc>()
          .add(OnChangeAppLifecycle(AppLifecycleStateV2.onDetach)),
      onHide: () => context
          .read<WidgetLifecycleBloc>()
          .add(OnChangeAppLifecycle(AppLifecycleStateV2.onHide)),
      onInactive: () => context
          .read<WidgetLifecycleBloc>()
          .add(OnChangeAppLifecycle(AppLifecycleStateV2.onInactive)),
      onPause: () => context
          .read<WidgetLifecycleBloc>()
          .add(OnChangeAppLifecycle(AppLifecycleStateV2.onPause)),
      onRestart: () => context
          .read<WidgetLifecycleBloc>()
          .add(OnChangeAppLifecycle(AppLifecycleStateV2.onRestart)),
      onResume: () => context
          .read<WidgetLifecycleBloc>()
          .add(OnChangeAppLifecycle(AppLifecycleStateV2.onResume)),
      onShow: () => context
          .read<WidgetLifecycleBloc>()
          .add(OnChangeAppLifecycle(AppLifecycleStateV2.onShow)),
    );
  }
}
