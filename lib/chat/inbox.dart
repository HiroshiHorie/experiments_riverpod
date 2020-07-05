import 'package:experiments_riverpod/ctrls/inbox.dart';
import 'package:experiments_riverpod/ctrls/messages.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ChatPage extends StatelessWidget {
  //
  final bool autoDispose;
  ChatPage({this.autoDispose = false});

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text('Chat Experiment AutoDispose($autoDispose)'),
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

                  return MessagesView(
                    userId: selectedUserId,
                    autoDispose: autoDispose,
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
  final bool autoDispose;

  MessagesView({
    @required this.userId,
    this.autoDispose = false,
  });

  @override
  Widget build(BuildContext ctx) => Consumer((ctx, r) {
        //
        final busy = autoDispose ? r(MessagesCtrl.busySelectorAD(userId)) : r(MessagesCtrl.busySelector(userId));
        final messages = autoDispose ? r(MessagesCtrl.messagesSelectorAD(userId)) : r(MessagesCtrl.messagesSelector(userId));

        if (busy)
          return Center(
            child: CircularProgressIndicator(),
          );

        return Scrollbar(
          child: ListView.builder(
              padding: EdgeInsets.symmetric(
                vertical: 26,
              ),
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
