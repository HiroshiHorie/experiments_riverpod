import 'package:experiments_riverpod/gen/objects.dart';
import 'package:experiments_riverpod/gen/states.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:state_notifier/state_notifier.dart';

class MessagesCtrl extends StateNotifier<MessagesState> {
  //
  static int instanceCounter = 0;

//  final ProviderReference rf;

  final String userId;
  MessagesCtrl({
    @required this.userId,
  }) : super(MessagesState(messages: [
          MessageObj(message: '🤭'),
          MessageObj(message: 'But If I don\'t use AutoDispose... look at the instance count growing at the logger 👇', sent: true),
          MessageObj(message: 'With AutoDisposeProvider this messages are getting reloaded every time', sent: true),
          MessageObj(message: 'Well.. I guess..'),
          MessageObj(message: 'These messages could possibly be thousands of messages', sent: true),
          MessageObj(message: 'Cool 😎'),
          MessageObj(message: 'This is a test', sent: true),
          MessageObj(message: 'Hi!'),
          MessageObj(message: 'Hello $userId', sent: true),
        ])) {
    //
    instanceCounter++;
    print('$runtimeType() instances:$instanceCounter');

    load();
  }

  dispose() {
    instanceCounter--;
    print('$runtimeType.dispose() instances:$instanceCounter');
    super.dispose();
  }

  load() {
    //
    print('$runtimeType.load() simulate load from internet...');

    Future.delayed(Duration(seconds: 2), () {
      if (mounted) {
        state = state.copyWith(busy: false);
        print('load done.');
      }
    });
  }

  static final provider = AutoDisposeStateNotifierProviderFamily<MessagesCtrl, String>((_, userId) => MessagesCtrl(userId: userId));

//  static messagesSelector(userId) => Computed((r) => r(provider(userId).state).messages);
  static final messagesSelector = ComputedFamily((r, userId) => r(MessagesCtrl.provider(userId).state).messages);
  static final busySelector = ComputedFamily((r, userId) => r(MessagesCtrl.provider(userId).state).busy);

//  static final userIdSelector = Computed((r) => r(provider.state).selectedUserId);
}
