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
                      right: 30,
                      bottom: 30,
                      child: FloatingActionButton(
                        onPressed: () => logCtrl.toggle(),
                        child: Text('Logs'),
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
                        itemBuilder: (ctx, i) => ListTile(
                          title: Text(logs[i]),
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
        '/chat/inbox': (_) => InboxPage(),
      },
    );
  }
}
