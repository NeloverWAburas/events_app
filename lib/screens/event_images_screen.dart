import 'package:flutter/material.dart';

import '../widgets/event_image_widget.dart';

class EventImagesWidget extends StatefulWidget {
  const EventImagesWidget({Key? key}) : super(key: key);
  _EventImagesWidgetState createState() => _EventImagesWidgetState();
}

class _EventImagesWidgetState extends State<EventImagesWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Event Images",
            style: TextStyle(
              fontSize: 20,
              color: Color(0xff3E3A57),
            )),
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Container(
          decoration: BoxDecoration(
            color: Color(0x70e1e1e5),
            borderRadius: BorderRadius.circular(15),
          ),
          child: IconButton(
            icon: Icon(
              Icons.arrow_back_ios,
              color: Color(0xff3E3A57),
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(15),
        child: GridView.builder(
            gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 200,
              childAspectRatio: 165 / 185,
              crossAxisSpacing: 14,
              mainAxisSpacing: 14,
            ),
            shrinkWrap: true,
            itemCount: 4,
            itemBuilder: (BuildContext context, index) {
              return EventImageWidget();
            }),
      ),
    );
  }
}
