import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:uuid/uuid.dart';

final baseUrlProvider = StateProvider((_) => 'https://${Uuid().v4()}.some-api.com/');
final sessionIdProvider = StateProvider((_) => Uuid().v4());

class APICtrl {
  //
  final ProviderReference _ref;
  String _baseUrl;
  String _sessionId;

  APICtrl(this._ref) {
    _baseUrl = _ref.watch(baseUrlProvider).state;
    _sessionId = _ref.watch(sessionIdProvider).state;
    print('APICtrl.init()');
  }

  dispose() {
    print('APICtrl.dispose()');
  }

  calcUrl() => '$_baseUrl?sessionId=$_sessionId';
}

final apiCtrlProvider = Provider<APICtrl>((ref) {
  final ctrl = APICtrl(ref);
  ref.onDispose(() => ctrl.dispose());
  return ctrl;
});

class WatchTest extends StatelessWidget {
  @override
  Widget build(BuildContext ctx) => Scaffold(
        appBar: AppBar(
          actions: [
            FlatButton(
              onPressed: () => ctx.read(baseUrlProvider).state = 'https://${Uuid().v4()}.some-api.com/',
              child: Text('Change baseUrl'),
            ),
            FlatButton(
              onPressed: () => ctx.read(sessionIdProvider).state = Uuid().v4(),
              child: Text('Change sessionId'),
            ),
          ],
        ),
        body: RaisedButton(
          onPressed: () => print(ctx.read(apiCtrlProvider).calcUrl()),
          child: Text('Read the url'),
        ),
        // Consumer((ctx, r) {
        //   return Center(
        //     child: Consumer((ctx, r) {
        //       final apiUrl = r(apiCtrlProvider);
        //       return Text(apiUrl.calcUrl());
        //     }),
        //   );
        // }),
      );
}
