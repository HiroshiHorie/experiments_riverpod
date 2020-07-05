import 'package:experiments_riverpod/ctrls/inbox.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class InboxPage extends StatelessWidget {
  //
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text('Chat Experiment'),
        ),
        body: LayoutBuilder(
          builder: (ctx, cons) => Row(
            children: [
              Container(
                width: cons.maxWidth * 0.3,
                child: Consumer((ctx, r) {
                  final users = r(InboxCtrl.usersSelector);

                  return Scrollbar(
                    child: ListView.builder(
                      itemCount: users.length,
                      itemBuilder: (ctx, i) => ListTile(
                        title: Text(users[i]),
                        onTap: () {},
                      ),
                    ),
                  );
                }),
              ),
              Expanded(
                child: Container(
                  color: Colors.red,
                ),
              ),
            ],
          ),
        ),
      );
}
