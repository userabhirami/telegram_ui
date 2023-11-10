import 'package:flutter/material.dart';
import 'package:telegram/database/database.dart';
import 'package:telegram/utils/colour_constant.dart';
import 'package:telegram/view/home_screen/home_screen.dart';

class FloatingActionButtonScreen extends StatefulWidget {
  const FloatingActionButtonScreen({super.key});

  @override
  State<FloatingActionButtonScreen> createState() =>
      _FloatingActionButtonScreenState();
}

class _FloatingActionButtonScreenState
    extends State<FloatingActionButtonScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => HomeScreen()));
          },
          icon: Icon(
            Icons.arrow_back,
            color: ColorConstant.white,
          ),
        ),
        title: Text("New Message"),
        backgroundColor: ColorConstant.blue,
        titleTextStyle: TextStyle(
          color: ColorConstant.white,
          fontSize: 18,
        ),
        actions: [
          Icon(
            Icons.search,
            color: ColorConstant.white,
          )
        ],
      ),
      body: Column(children: [
        Padding(
          padding: const EdgeInsets.only(
            left: 10,
            top: 10,
          ),
          child: Row(
            children: [
              Container(
                  height: 30,
                  width: 30,
                  child: Image.asset("assets/images/new_group.png")),
              SizedBox(
                width: 50,
              ),
              Text(
                "New Group",
                style: TextStyle(color: Colors.black),
              )
            ],
          ),
        ),
        SizedBox(
          height: 5,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Row(
            children: [
              Container(
                  height: 30,
                  width: 30,
                  child: Image.asset("assets/images/secret_chat.png")),
              SizedBox(
                width: 50,
              ),
              Text(
                "New Secret Chat",
                style: TextStyle(color: Colors.black),
              )
            ],
          ),
        ),
        SizedBox(
          height: 5,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10, bottom: 10),
          child: Row(
            children: [
              Container(
                  height: 30,
                  width: 30,
                  child: Image.asset("assets/images/new_channel.png")),
              SizedBox(
                width: 50,
              ),
              Text(
                "New Channel",
                style: TextStyle(color: Colors.black),
              )
            ],
          ),
        ),
        SizedBox(
          height: 3,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Container(
            height: 30,
            width: double.infinity,
            child: Text(
              "Sorted by last seen time",
              style: TextStyle(color: ColorConstant.black),
            ),
          ),
        ),
        Container(
          height: 500,
          width: double.infinity,
          //  color: Colors.amber,
          child: ListView.separated(
              itemBuilder: (context, index) => ListTile(
                    leading: CircleAvatar(
                        radius: 30,
                        backgroundColor: Colors.amber,
                        backgroundImage:
                            AssetImage(Database.Profilepic[index])),
                    title: Text("Name"),
                    subtitle: Text(
                      "last seen ",
                      style: TextStyle(color: Colors.grey),
                    ),
                  ),
              separatorBuilder: (context, index) => SizedBox(
                    height: 5,
                  ),
              itemCount: 10),
        ),
      ]),
      floatingActionButton:
          FloatingActionButton(onPressed: () {}, child: Icon(Icons.person)),
    );
  }
}
