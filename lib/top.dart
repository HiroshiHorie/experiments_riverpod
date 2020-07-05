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
              title: Text('Chat Experiment'),
              onTap: () => Navigator.pushNamed(ctx, '/chat/inbox'),
            ),
            ListTile(
              title: Text('Test logger'),
              onTap: () => print('log test ${Uuid().v4()}'),
            ),
          ],
        ),
      );
}
