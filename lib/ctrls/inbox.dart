import 'package:experiments_riverpod/gen/states.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:state_notifier/state_notifier.dart';
import 'package:uuid/uuid.dart';

class InboxCtrl extends StateNotifier<InboxState> {
  //
  static int instanceCounter = 0;
  final ProviderReference rf;

  InboxCtrl(this.rf)
      : super(InboxState(
          userIds: List<String>.generate(
            100,
            (index) => 'user' + Uuid().v4(),
          ),
        )) {
    //
    instanceCounter++;
    print('$runtimeType() instances:$instanceCounter');
  }

  dispose() {
    instanceCounter--;
    print('$runtimeType.dispose() instances:$instanceCounter');
    super.dispose();
  }

  void selectUser(String userId) {
    state = state.copyWith(selectedUserId: userId);
    print('Selected $userId');
  }

  static final provider = AutoDisposeStateNotifierProvider<InboxCtrl>((rf) => InboxCtrl(rf));
  static final usersSelector = Computed((r) => r(provider.state).userIds);
  static final userIdSelector = Computed((r) => r(provider.state).selectedUserId);
}
