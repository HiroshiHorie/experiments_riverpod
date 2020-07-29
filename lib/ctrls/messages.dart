import 'package:experiments_riverpod/gen/objects.dart';
import 'package:experiments_riverpod/gen/states.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:state_notifier/state_notifier.dart';

class MessagesCtrl extends StateNotifier<MessagesState> {
  //
  static int instanceCounter = 0;

  final String userId;
  MessagesCtrl({
    @required this.userId,
  }) : super(MessagesState(messages: [
          MessageObj(message: 'Bye $userId', sent: true),
          MessageObj(message: 'If only there was a way to AutoDispose after a certain Duration...', sent: true),
          MessageObj(message: 'Of course I can do that, but FamilyProviders are already in a way, like a in memory cache.', sent: true),
          MessageObj(message: 'Why dont\'t you just use AutoDispose and cache the messages yourself.'),
          MessageObj(message: 'I\m not sure...', sent: true),
          MessageObj(message: '🤭 Is is safe/best practice to keep lots of unreachable memory, especially on mobile devices?'),
          MessageObj(message: 'But If I don\'t use AutoDispose... look at the instance count growing at the logger 👇', sent: true),
          MessageObj(message: 'With AutoDisposeProvider these messages are getting reloaded every time', sent: true),
          MessageObj(message: 'Well.. I guess..'),
          MessageObj(message: 'These messages could possibly be thousands of messages', sent: true),
          MessageObj(message: 'Cool 😎'),
          MessageObj(message: 'This is a test', sent: true),
          MessageObj(message: 'Hi!'),
          MessageObj(message: 'Hello $userId', sent: true),
        ])) {
    //
    instanceCounter++;
    print('[MessagesCtrl] init() instances:$instanceCounter');

    load();

    //
    //
    //
//    print('added Listener');
//    addListener((state) { });
  }

  dispose() {
    instanceCounter--;
    print('[MessagesCtrl] dispose() instances:$instanceCounter');
    super.dispose();
  }

  load() {
    //
    print('[MessagesCtrl] load() Simulate messages fetch from internet...');

    Future.delayed(Duration(seconds: 1), () {
      if (mounted) {
        state = state.copyWith(busy: false);
        print('[MessagesCtrl] load() completed.');
      }
    });
  }

  static final provider = StateNotifierProviderFamily<MessagesCtrl, String>((_, userId) => MessagesCtrl(userId: userId));
  static final messagesSelector = ComputedFamily((r, userId) => r(MessagesCtrl.provider(userId).state).messages);
  static final busySelector = ComputedFamily((r, userId) => r(MessagesCtrl.provider(userId).state).busy);

  static final providerAD = AutoDisposeStateNotifierProviderFamily<MessagesCtrl, String>((_, userId) => MessagesCtrl(userId: userId));
  static final messagesSelectorAD = ComputedFamily((r, userId) => r(MessagesCtrl.providerAD(userId).state).messages);
  static final busySelectorAD = ComputedFamily((r, userId) => r(MessagesCtrl.providerAD(userId).state).busy);

}
