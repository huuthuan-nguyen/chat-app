import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<Object>(
          stream: FirebaseFirestore.instance
              .collection('chats/pmeF9rRaCppnVvxzSIrL/messages')
              .snapshots(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
            final querySnapshot = snapshot.data as QuerySnapshot;
            return ListView.builder(
              itemCount: querySnapshot.docs.length,
              itemBuilder: (ctx, index) => Container(
                padding: const EdgeInsets.all(8),
                child: Text(querySnapshot.docs[index]['text']),
              ),
            );
          }),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () async {
          FirebaseFirestore.instance
              .collection('chats/pmeF9rRaCppnVvxzSIrL/messages')
              .add({'text': 'This was added by clicking the button!'});
        },
      ),
    );
  }
}
