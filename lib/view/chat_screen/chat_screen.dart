import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          Icons.arrow_back,
          color: Colors.white,
        ),
        actions: [
          Row(
            children: [
              CircleAvatar(
                radius: 40,
                child: Text("A"),
              ),
              Column(
                children: [Text("Name"), Text("last seen")],
              ),
              SizedBox(
                width: 10,
              ),
              Icon(Icons.phone),
              SizedBox(
                width: 10,
              ),
              Icon(Icons.more),
              SizedBox(
                width: 5,
              ),
            ],
          )
        ],
      ),
      body: Column(
        children: [
          Container(
            height: 500,
            width: double.infinity,
            color: Colors.green,
          ),
          Container(
            height: 20,
            width: double.infinity,
            color: Colors.white,
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(Icons.gif),
                  TextField(
                    decoration: InputDecoration(
                        hintText: 'Message',
                        hintStyle: TextStyle(color: Colors.black)),
                  ),
                  Icon(Icons.attach_file),
                  Icon(Icons.mic)
                ]),
          )
        ],
      ),
    );
  }
}
