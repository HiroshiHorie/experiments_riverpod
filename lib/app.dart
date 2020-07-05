import 'package:experiments_riverpod/chat/inbox.dart';
import 'package:experiments_riverpod/ctrls/logger.dart';
import 'package:experiments_riverpod/top.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class RiverpodExperimentApp extends StatelessWidget {
  //
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Riverpod Experiment App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      builder: (ctx, child) => Material(
        child: Consumer((ctx, r) {
          //
          final logCtrl = r(LoggerCtrl.provider);
          final visible = r(LoggerCtrl.visibleSelector);

          return Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                child: Stack(
                  children: [
                    child,
                    Positioned(
                      left: 30,
                      bottom: 30,
                      child: RaisedButton(
                        padding: EdgeInsets.symmetric(
                          vertical: 26,
                          horizontal: 26,
                        ),
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(26)),
                        color: Theme.of(ctx).primaryColor,
                        onPressed: () => logCtrl.toggle(),
                        child: Text(
                          'Toggle Logger',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              if (visible)
                Container(
                  height: 320,
                  color: Colors.grey[200],
                  child: Consumer((ctx, r) {
                    final logs = r(LoggerCtrl.logsSelector);

                    return Scrollbar(
                      child: ListView.builder(
                        reverse: true,
                        itemCount: logs.length,
                        itemBuilder: (ctx, i) => Padding(
                          padding: EdgeInsets.symmetric(vertical: 5, horizontal: 26,),
                          child: Text(logs[i]),
                        ),
                      ),
                    );
                  }),
                ),
            ],
          );
        }),
      ),
      routes: {
        '/': (_) => TopPage(),
        '/chat': (_) => ChatPage(),
        '/chat/auto-dispose': (_) => ChatPage(autoDispose: true),
      },
    );
  }
}
