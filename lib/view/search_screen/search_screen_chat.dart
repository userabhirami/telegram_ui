import 'package:flutter/material.dart';
import 'package:telegram/database/database.dart';

class SearchScreenChat extends StatelessWidget {
  const SearchScreenChat({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CircleAvatar(
                        radius: 30,
                        backgroundColor: Colors.amber,
                        backgroundImage:
                            AssetImage("assets/images/Ellipse 4.png")),
                    CircleAvatar(
                        radius: 30,
                        backgroundColor: Colors.amber,
                        backgroundImage:
                            AssetImage("assets/images/Ellipse 4.png")),
                    CircleAvatar(
                        radius: 30,
                        backgroundColor: Colors.amber,
                        backgroundImage:
                            AssetImage("assets/images/Ellipse 4.png")),
                    CircleAvatar(
                        radius: 30,
                        backgroundColor: Colors.amber,
                        backgroundImage:
                            AssetImage("assets/images/Ellipse 4.png")),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Name"),
                    Text("Name"),
                    Text("Name"),
                    Text("Name"),
                  ],
                ),
              ],
            ),
          ),
          Container(
            //  height: 50,
            width: double.infinity,
            color: Colors.grey,
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Recent",
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                  SizedBox(
                    width: 100,
                  ),
                  Text(
                    "Clear all",
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: 5,
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
        ],
      ),
    );
  }
}
