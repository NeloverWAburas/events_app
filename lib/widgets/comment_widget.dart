import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CommentWidget extends StatelessWidget {
  const CommentWidget({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topLeft,
      height: 80,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(7),
        border: Border.all(color: Color(0xffbfbfc3)),
      ),
      padding: EdgeInsets.symmetric(horizontal: 7),
      child: Row(children: [
        Image.asset("assets/images/Mask Group 8.png"),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              "Slava John",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 5),
            Text("comment Appear here"),
            SizedBox(height: 5),
            Text("12/12/2020 - 12:18am"),
          ],
        ),
      ]),
    );
  }
}
