import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';

class TopPage extends StatelessWidget {
  //
  @override
  Widget build(BuildContext ctx) => Scaffold(
        appBar: AppBar(
          title: Text('Riverpod Experiments'),
        ),
        body: ListView(
          children: [
            ListTile(
              title: Text('Chat Experiment (non-AutoDispose)'),
              onTap: () => Navigator.pushNamed(ctx, '/chat'),
            ),
            ListTile(
              title: Text('Chat Experiment (AutoDispose)'),
              onTap: () => Navigator.pushNamed(ctx, '/chat/auto-dispose'),
            ),
            ListTile(
              title: Text('Test logger'),
              onTap: () => print('log test ${Uuid().v4()}'),
            ),
          ],
        ),
      );
}
