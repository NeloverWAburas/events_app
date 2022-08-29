import 'package:events/widgets/icon_data_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class EventImageWidget extends StatelessWidget {
  const EventImageWidget({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 1,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Expanded(
                flex: 2,
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset("assets/images/Mask Group.png"))),
            Text("Image Name"),
            IconDataWidget(
              data: "09:00am",
              icon: Icons.access_alarm,
              iconColor: Color(0xff8E8B9D),
            ),
          ],
        ),
      ),
    );
  }
}
