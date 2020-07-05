import 'dart:async';

import 'package:experiments_riverpod/gen/states.dart';
import 'package:experiments_riverpod/main.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:state_notifier/state_notifier.dart';

class LoggerCtrl extends StateNotifier<LoggerState> {
  //
  //
  //

  StreamSubscription _printHookSubscription;

  LoggerCtrl() : super(LoggerState()) {
    _printHookSubscription = printHookStream.stream.listen((message) => _print(message));
    print('Logger initialized');
  }

  @override
  void dispose() {
    _printHookSubscription.cancel();
    super.dispose();
  }

  //
  // This can be private
  //
  void _print(String string) => state = state.copyWith(logs: [
        string,
        ...state.logs,
      ]);

  void toggle() => state = state.copyWith(visible: !state.visible);

  static final provider = StateNotifierProvider((_) => LoggerCtrl());
  static final visibleSelector = Computed((r) => r(provider.state).visible);
  static final logsSelector = Computed((r) => r(provider.state).logs);
}
