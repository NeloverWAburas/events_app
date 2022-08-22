import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class EventWidget extends StatelessWidget {
  const EventWidget({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Card(
      child: SizedBox(
        height: 103,
        //width: 343,
        child: Container(
          decoration: BoxDecoration(
            //color: Colors.red,
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: Color(0xffECECEF)),
          ),
          padding:
              const EdgeInsets.symmetric(horizontal: 14, vertical: 12), //14, 12
          child: Row(children: [
            Image.asset("assets/images/Rectangle 2968.png"),
            SizedBox(width: 10),
            SizedBox(
              height: 80,
              child: Column(
                children: [
                  Text(
                    "12:00am-2hours",
                    style: TextStyle(
                      color: Color(0xff8E8B9D),
                      fontSize: 11,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Event Name",
                    style: TextStyle(
                      color: Color(0xff423E5B),
                      fontSize: 15,
                    ),
                  ),
                  SizedBox(
                    height: 7,
                  ),
                  Text(
                    "12/12/2020",
                    style: TextStyle(
                      color: Color(0xff253975),
                      fontSize: 11,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Align(
                alignment: Alignment.topRight,
                child: Container(
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    color: Color(0xffd9d9de),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Text(
                    "Active",
                    style: TextStyle(
                      color: Colors.green,
                    ),
                  ),
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
