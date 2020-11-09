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
    print('[InboxCtrl] init() instances:$instanceCounter');
  }

  dispose() {
    instanceCounter--;
    print('[InboxCtrl] dispose() instances:$instanceCounter');
    super.dispose();
  }

  void selectUser(String userId) {
    state = state.copyWith(selectedUserId: userId);
    print('Selected $userId');
  }

  static final provider = StateNotifierProvider<InboxCtrl>((ref) => InboxCtrl(ref));
  static final usersSelector = Provider((ref) => ref.watch(provider.state).userIds);
  static final userIdSelector = Provider((ref) => ref.watch(provider.state).selectedUserId);
}
