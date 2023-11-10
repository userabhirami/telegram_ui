import 'package:flutter/material.dart';

class MychatlistBuilder extends StatelessWidget {
  const MychatlistBuilder({
    super.key,
    required this.title,
    required this.subtitle,
    // required this.imageList
  });

  final String title;
  //title as per the user type chyan vndi define chyh vkyaaan
  final String subtitle;
  //final List<String> imageList;

  @override
  Widget build(BuildContext context) {
    return Container(
      // padding: EdgeInsets.only(top: 22),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 16,
                    //  fontWeight: FontWeight.w700,
                    color: Colors.black,
                  ),
                ),
                SizedBox(
                  width: 120,
                ),
                Text("10:45 PM"),
              ],
            ),
            SizedBox(
              height: 3,
            ),
            Row(
              children: [
                Text(
                  subtitle,
                  style: TextStyle(
                    fontSize: 16,
                    // fontWeight: FontWeight.w700,
                    color: Colors.black,
                  ),
                ),
                SizedBox(
                  width: 120,
                ),
                CircleAvatar(
                  radius: 10,
                  backgroundColor: Colors.green,
                  child: Text(
                    "1",
                    style: TextStyle(color: Colors.white),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
