import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class EventWidget extends StatelessWidget {
  const EventWidget({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Image.asset("assets/images/Rectangle 2968.png"),
      Column(
         children: [
        Text(
          "12:00am-2hours",
          style: TextStyle(
            color: Colors.grey,
          ),
        ),
        SizedBox(
          height: 5,
        ),
        Text(
          "Event Name",
          style: TextStyle(fontSize: 20),
        ),
        SizedBox(
          height: 5,
        ),
        Text(
          "12/12/2020",
          style: TextStyle(
            color: Colors.grey,
          ),
        ),
      ],)
    ]);
  }
}
