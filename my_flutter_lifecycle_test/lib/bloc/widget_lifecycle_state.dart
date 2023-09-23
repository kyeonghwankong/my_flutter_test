import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intl/intl.dart';

part 'widget_lifecycle_state.freezed.dart';

@freezed
class WidgetLifecycleState with _$WidgetLifecycleState {
  const factory WidgetLifecycleState({
    required List<String> lifecycleListenerHistory,
    required List<String> widgetBindingHistory,
  }) = _WidgetLifecycleState;

  const WidgetLifecycleState._();

  static WidgetLifecycleState newInstance() => const WidgetLifecycleState(
        lifecycleListenerHistory: [],
        widgetBindingHistory: [],
      );

  WidgetLifecycleState addAppLifecycleListenerEvent(String name) {
    List<String> newLifecycleListenerHistory = [];
    newLifecycleListenerHistory.addAll(lifecycleListenerHistory);
    newLifecycleListenerHistory
        .add('${DateFormat('yy/MM/dd HH:mm:ss').format(DateTime.now())} $name');
    return copyWith(lifecycleListenerHistory: newLifecycleListenerHistory);
  }

  WidgetLifecycleState addWidgetsBindingObserverEvent(String name) {
    List<String> newWidgetBindingHistory = [];
    newWidgetBindingHistory.addAll(widgetBindingHistory);
    newWidgetBindingHistory
        .add('${DateFormat('yy/MM/dd HH:mm:ss').format(DateTime.now())} $name');
    return copyWith(widgetBindingHistory: newWidgetBindingHistory);
  }
}
