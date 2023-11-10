import 'package:flutter/material.dart';

class SearchScreenFiles extends StatelessWidget {
  const SearchScreenFiles({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      child: ListView.builder(
          itemBuilder: (context, index) => ListTile(
                leading: CircleAvatar(
                  radius: 60,
                  backgroundImage: AssetImage("assets/images/Ellipse 4.png"),
                ),
                title: Text("Title"),
                subtitle: Text("Subtitle"),
              )),
    );
  }
}
