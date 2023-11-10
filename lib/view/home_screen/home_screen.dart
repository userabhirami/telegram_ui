import 'package:flutter/material.dart';
import 'package:telegram/database/database.dart';
import 'package:telegram/utils/colour_constant.dart';
import 'package:telegram/utils/image_constant.dart';
import 'package:telegram/view/chat_screen/chat_screen.dart';
import 'package:telegram/view/home_screen/floating_action_button_screen.dart';
import 'package:telegram/view/search_screen/search_screen.dart';
import 'package:telegram/widgets/chatlist_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int? selectedIndex;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.blue,
                ),
                child: Column(
                  children: [
                    SizedBox(
                      height: 5,
                    ),
                    CircleAvatar(
                      radius: 35,
                      backgroundColor: Colors.white,
                      foregroundImage: AssetImage("assets/images/contacts.png"),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Abhirami Surendran",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    SizedBox(
                      height: 7,
                    ),
                    Text(
                      "Mobile Number",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ],
                )
                //Text('Drawer Header'),
                ),
            ListTile(
              title: Row(
                children: [
                  Container(
                      height: 50,
                      width: 50,
                      child: Image.asset("assets/images/plusicon.png")),
                  SizedBox(
                    width: 10,
                  ), // plus image
                  Text(
                    "Add Account",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  )
                ],
              ),
              // title: const Text('Item 1'),
            ),
            ListTile(
              title: Row(
                children: [
                  Container(
                      height: 50,
                      width: 50,
                      child: Image.asset(
                          "assets/images/mystories.png")), // story image
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "My Stories",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  )
                ],
              ),
            ),
            ListTile(
              title: Row(
                children: [
                  Container(
                      height: 50,
                      width: 50,
                      child: Image.asset(
                          "assets/images/newgroup.png")), // person image
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "New Group",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  )
                ],
              ),
            ),
            ListTile(
              title: Row(
                children: [
                  Container(
                      height: 50,
                      width: 50,
                      child: Image.asset(
                          "assets/images/contacts.png")), // person image
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Contacts",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  )
                ],
              ),
            ),
            ListTile(
              title: Row(
                children: [
                  Container(
                      height: 50,
                      width: 50,
                      child:
                          Image.asset("assets/images/calls.png")), // call image
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Calls",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  )
                ],
              ),
            ),
            ListTile(
              title: Row(
                children: [
                  Container(
                      height: 50,
                      width: 50,
                      child: Image.asset(
                          "assets/images/nearby.png")), // people nearby image
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "People Nearby",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  )
                ],
              ),
            ),
            ListTile(
              title: Row(
                children: [
                  Container(
                      height: 50,
                      width: 50,
                      child: Image.asset(
                          "assets/images/savedmsg.png")), // saved image
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Saved Messages",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  )
                ],
              ),
            ),
            ListTile(
              title: Row(
                children: [
                  Container(
                      height: 50,
                      width: 50,
                      child: Image.asset(
                          "assets/images/settings.png")), // settings image
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Settings",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  )
                ],
              ),
            ),
            ListTile(
              title: Row(
                children: [
                  Container(
                      height: 50,
                      width: 50,
                      child: Image.asset(
                          "assets/images/invitefrnds.png")), // person image
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Invite Friends",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  )
                ],
              ),
            ),
            ListTile(
              title: Row(
                children: [
                  Container(
                      height: 50,
                      width: 50,
                      child: Image.asset(
                          "assets/images/features.png")), // questionmark image
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Telegram Features",
                  )
                ],
              ),
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: Text("Telegram"),
        backgroundColor: ColorConstant.blue,
        titleTextStyle: TextStyle(
          color: ColorConstant.white,
          fontSize: 18,
        ),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SearchScreen()),
                );
              },
              icon: Icon(Icons.search))
        ],
      ),
      body: ListView.separated(
          itemBuilder: (context, index) => ListTile(
                onTap: () {
                  // selectedIndex = index;
                  //setState(() {});
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ChatScreen()));
                },
                trailing: selectedIndex == index ? Icon(Icons.check) : null,
                leading: CircleAvatar(
                    radius: 30,
                    backgroundColor: Colors.amber,
                    backgroundImage: AssetImage(Database.Profilepic[index])),
                title: MychatlistBuilder(
                  title: "Name",
                  subtitle: "Description",
                  // imageList: Database.Profilepic
                ),
              ),
          separatorBuilder: (context, index) => SizedBox(
                height: 10,
              ),
          itemCount: 10),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => FloatingActionButtonScreen()));
          },
          child: Icon(Icons.edit)),
    );
  }
}
