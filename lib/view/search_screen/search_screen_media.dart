import 'package:flutter/material.dart';
import 'package:telegram/database/database.dart';

class SearchScreenMedia extends StatelessWidget {
  const SearchScreenMedia({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      // color: Colors.amber,
      child: GridView.builder(
        itemCount: Database.media.length + 1,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 2,
          mainAxisSpacing: 2,
        ),
        itemBuilder: (context, index) => index == Database.media.length
            ? SizedBox(
                height: 5,
              )
            : Column(
                children: [
                  Container(
                    child: Image.asset(
                      Database.media[index],
                      fit: BoxFit.fill,
                    ),
                  ),
                ],
              ),
      ),
    );
  }
}
