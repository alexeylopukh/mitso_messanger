import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mitso_messanger/message_model.dart';

class ChatScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return ChatScreenState();
  }
}

class ChatScreenState extends State<ChatScreen> {
  List<MessageModel> messages = [
    MessageModel(text: '123', isMyMessage: false),
    MessageModel(text: '123', isMyMessage: true),
    MessageModel(text: '123', isMyMessage: false)
  ];
  TextEditingController editController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      child: Column(
        children: <Widget>[
          Expanded(
            child: ListView.builder(
                itemCount: messages.length,
                itemBuilder: (context, index) => cellForRowAt(messages[index])),
          ),
          Row(
            children: <Widget>[
              Expanded(child: TextField(controller: editController)),
              IconButton(
                icon: Icon(Icons.message),
                onPressed: () {
                  messages.add(MessageModel(
                      text: editController.text, isMyMessage: true));
                  update();
                },
              )
            ],
          )
        ],
      ),
    ));
  }

  update() {
    if (mounted) {
      setState(() {});
    }
  }

  Widget cellForRowAt(MessageModel message) {
    return Container(
      height: 50,
      child: Text(message.text),
      alignment:
          message.isMyMessage ? Alignment.centerRight : Alignment.centerLeft,
      margin: EdgeInsets.all(10),
    );
  }
}
