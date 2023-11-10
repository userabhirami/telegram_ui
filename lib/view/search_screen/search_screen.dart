import 'package:flutter/material.dart';
import 'package:telegram/database/database.dart';
import 'package:telegram/view/home_screen/home_screen.dart';
import 'package:telegram/view/search_screen/search_screen_chat.dart';
import 'package:telegram/view/search_screen/search_screen_downloads.dart';
import 'package:telegram/view/search_screen/search_screen_files.dart';
import 'package:telegram/view/search_screen/search_screen_links.dart';
import 'package:telegram/view/search_screen/search_screen_media.dart';
import 'package:telegram/view/search_screen/search_screen_musics.dart';
import 'package:telegram/view/search_screen/search_screen_voices.dart';
import 'package:telegram/widgets/chatlist_widget.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 7,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          leading: IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HomeScreen()),
                );
              },
              icon: Icon(Icons.arrow_back, color: Colors.black)),
          //Icon(Icons.arrow_back, color: Colors.black),
          backgroundColor: Colors.white,
          bottom: TabBar(
            tabs: [
              Text(
                "Chats",
                style: TextStyle(color: Colors.black),
              ),
              Text(
                "Media",
                style: TextStyle(color: Colors.black),
              ),
              Text(
                "Downloads",
                style: TextStyle(color: Colors.black),
              ),
              Text(
                "Links",
                style: TextStyle(color: Colors.black),
              ),
              Text(
                "Files",
                style: TextStyle(color: Colors.black),
              ),
              Text(
                "Music",
                style: TextStyle(color: Colors.black),
              ),
              Text(
                "Voice",
                style: TextStyle(color: Colors.black),
              )
            ],
            isScrollable: true,
          ),
          title: TextField(
            decoration: InputDecoration(
                hintText: 'Search', hintStyle: TextStyle(color: Colors.black)),
          ),
        ),
        body: TabBarView(children: [
          Center(child: SearchScreenChat()),
          Center(child: SearchScreenMedia()),
          Center(child: SearchScreenDownloads()),
          Center(child: SearchScreenLinks()),
          Center(child: SearchScreenFiles()),
          Center(child: SearchScreenMusics()),
          Center(child: SearchScreenVoices()),
        ]),
      ),
    );
  }
}
