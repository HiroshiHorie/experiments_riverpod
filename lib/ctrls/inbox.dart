import 'package:experiments_riverpod/gen/states.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:state_notifier/state_notifier.dart';
import 'package:uuid/uuid.dart';

class InboxCtrl extends StateNotifier<InboxState> {
  //
  final ProviderReference rf;

  InboxCtrl(this.rf)
      : super(InboxState(
          userIds: List<String>.generate(
            100,
            (index) => 'user' + Uuid().v4(),
          ),
        )) {
    //

    print('$runtimeType init()');
  }

  dispose() {
    print('$runtimeType dispose()');
    super.dispose();
  }

  static final provider = AutoDisposeStateNotifierProvider<InboxCtrl>((rf) => InboxCtrl(rf));
  static final usersSelector = Computed((r) => r(provider.state).userIds);
}
