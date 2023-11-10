import 'package:flutter/material.dart';
import 'package:telegram/view/home_screen/home_screen.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HomeScreen()),
                );
              },
              icon: Icon(Icons.search))
        ],
        title: Container(
            width: double.infinity,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CircleAvatar(
                  radius: 20,
                  child: Text("A"),
                ),
                Column(
                  children: [
                    Text(
                      "Name",
                      style: TextStyle(fontSize: 14),
                    ),
                    Text(
                      "last seen",
                      style: TextStyle(fontSize: 14),
                    )
                  ],
                ),
                SizedBox(
                  width: 10,
                ),
                Icon(Icons.phone),
                SizedBox(
                  width: 10,
                ),
                Icon(Icons.more_vert_outlined),
                SizedBox(
                  width: 5,
                ),
              ],
            )),
        /* Row(
          children: [
            Icon(
              Icons.arrow_back,
              color: Colors.white,
            ),
            CircleAvatar(
              radius: 20,
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
        ), */
      ),
      body: Column(
        children: [
          Container(
            height: 600,
            width: double.infinity,
            color: Colors.green,
            /* child: Column(
              children: [
                Row(
                  children: [
                    Icon(Icons.gif),
                    TextField(
                      decoration: InputDecoration(
                          hintText: 'Message',
                          hintStyle: TextStyle(color: Colors.black)),
                    ),
                    Icon(Icons.attach_file),
                    Icon(Icons.mic)
                  ],
                )
              ],
            ), */
          ),
          Container(
            height: 50,
            width: double.infinity,
            color: Colors.white,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(
                  Icons.gif,
                  size: 40,
                ),
                Text(
                  "Type a Message",
                  style: TextStyle(color: Color.fromARGB(255, 80, 79, 79)),
                ),
                Icon(
                  Icons.attachment,
                  size: 30,
                ),
                Icon(
                  Icons.mic,
                  color: Colors.black,
                  size: 18,
                )
              ],
            ),
            /* child: Row(
              children: [
                Icon(Icons.gif),
                TextField(
                  decoration: InputDecoration(
                      hintText: 'Message',
                      hintStyle: TextStyle(color: Colors.black)),
                ),
                Icon(Icons.attach_file),
                Icon(Icons.mic)
              ],
            ), */
          )
        ],
      ),
      /* 
      */
    );
  }
}
