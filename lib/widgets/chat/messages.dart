import 'package:chat_app/widgets/chat/message_bubble.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class Messages extends StatelessWidget {
  const Messages({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      builder: (ctx, chatSnapshot) {
        if (chatSnapshot.connectionState == ConnectionState.waiting) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
        final chatDocs = chatSnapshot.data?.docs;
        return ListView.builder(
          reverse: true,
          itemCount: chatDocs?.length,
          itemBuilder: (ctx, index) => MessageBubble(
            chatDocs?[index]['text'],
            chatDocs?[index]['username'],
            chatDocs?[index]['userID'] ==
                FirebaseAuth.instance.currentUser?.uid,
            key: ValueKey(chatDocs?[index].id),
          ),
        );
      },
      stream: FirebaseFirestore.instance
          .collection('chats')
          .orderBy('createdAt', descending: true)
          .snapshots(),
    );
  }
}
