import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ChatScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return ChatScreenState();
  }
}

class ChatScreenState extends State<ChatScreen> {
  List<String> messages = ["133", "ldl"];
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
                  messages.add(editController.text);
                  update();
                },
              )
            ],
          )
        ],
      ),
    )
//      body: Column(
//        children: <Widget>[
//          Container(
//            child: ListView.builder(
//                itemCount: messages.length,
//                itemBuilder: (context, index) => cellForRowAt(messages[index])),
//          ),

//        ],
//      ),
        );
  }

  update() {
    if (mounted) {
      setState(() {});
    }
  }

  Widget cellForRowAt(message) {
    return Container(
      height: 50,
      child: Text(message),
      alignment: Alignment.centerLeft,
      margin: EdgeInsets.all(10),
    );
  }
}
