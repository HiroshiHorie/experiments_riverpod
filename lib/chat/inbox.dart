import 'package:experiments_riverpod/ctrls/inbox.dart';
import 'package:experiments_riverpod/ctrls/messages.dart';
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
                  final ctrl = r(InboxCtrl.provider);
                  final users = r(InboxCtrl.usersSelector);

                  return Scrollbar(
                    child: ListView.builder(
                      itemCount: users.length,
                      itemBuilder: (ctx, i) => ListTile(
                        title: Text('User $i'),
                        subtitle: Text(
                          users[i],
                          softWrap: false,
                          overflow: TextOverflow.ellipsis,
                        ),
                        onTap: () => ctrl.selectUser(users[i]),
                      ),
                    ),
                  );
                }),
              ),
              Expanded(
                child: Consumer((ctx, r) {
                  final selectedUserId = r(InboxCtrl.userIdSelector);

                  if (selectedUserId == null)
                    return Container(
                      alignment: Alignment.center,
                      child: Text('Please select a user'),
                    );

                  return MessagesView(userId: selectedUserId);

                  return Container(
                    alignment: Alignment.center,
                    color: Colors.grey,
                    child: Consumer((ctx, r) {
                      final p = r(MessagesCtrl.provider(selectedUserId).state);

                      return Text(p.toString());
                    }),
                  );
                }),
              ),
            ],
          ),
        ),
      );
}

class MessagesView extends StatelessWidget {
  //
  final String userId;

//  Computed<List<MessageObj>> messagesSelector;

  MessagesView({
    @required this.userId,
  }) {
//    messagesSelector = Computed((r) => r(MessagesCtrl.provider(userId).state).messages);
  }

  @override
  Widget build(BuildContext ctx) => Consumer((ctx, r) {
        //
        final busy = r(MessagesCtrl.busySelector(userId));
        final messages = r(MessagesCtrl.messagesSelector(userId));

        if (busy)
          return Center(
            child: CircularProgressIndicator(),
          );

        return Scrollbar(
          child: ListView.builder(
              reverse: true,
              itemCount: messages.length,
              itemBuilder: (ctx, i) {
                final messageObj = messages[i];

                return Container(
                  alignment: messageObj.sent ? Alignment.bottomRight : Alignment.bottomLeft,
                  padding: EdgeInsets.symmetric(
                    vertical: 5,
                    horizontal: 26,
                  ),
                  child: Container(
                    constraints: BoxConstraints(maxWidth: 320),
                    decoration: BoxDecoration(
                      color: messageObj.sent ? Theme.of(ctx).primaryColor : Colors.grey[200],
                      borderRadius: BorderRadius.circular(20),
                    ),
                    padding: EdgeInsets.symmetric(
                      vertical: 10,
                      horizontal: 15,
                    ),
                    child: Text(
                      messageObj.message,
                      style: TextStyle(
                        fontSize: 16,
                        color: messageObj.sent ? Colors.white : null,
                      ),
                    ),
                  ),
                );
              }),
        );
      });
}
