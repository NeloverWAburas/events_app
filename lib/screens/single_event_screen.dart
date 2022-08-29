import 'package:events/widgets/comment_widget.dart';
import 'package:flutter/material.dart';
import 'package:fluttericon/iconic_icons.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:outline_material_icons/outline_material_icons.dart';
import '../widgets/icon_data_widget.dart';

class SingleEventScreen extends StatefulWidget {
  const SingleEventScreen({Key? key}) : super(key: key);
  _SingleEventScreenState createState() => _SingleEventScreenState();
}

class _SingleEventScreenState extends State<SingleEventScreen> {
  String s =
      '''Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua.''';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Event Name",
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
        actions: [
          IconButton(
            icon: Icon(
              FontAwesomeIcons.commentMedical,
              color: Color(0xff3E3A57),
              size: 25.0,
            ),
            onPressed: () {},
          ),
          SizedBox(
            width: 10,
          ),
          IconButton(
            icon: Icon(
              Icons.linked_camera,
              color: Color(0xff3E3A57),
              size: 25.0,
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: ListView(
        children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: 16),
            decoration: BoxDecoration(),
            child: Column(
              children: <Widget>[
                Container(
                  alignment: Alignment.bottomLeft,
                  padding: EdgeInsets.all(15),
                  height: 200,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/images/Image.png"),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Column(children: [
                    Expanded(
                      child: SizedBox(),
                    ),
                    Container(
                      width: 100,
                      child: Row(
                        children: [
                          IconDataWidget(
                            data: "2 Hours",
                            icon: OMIcons.alarmOn,
                          ),
                        ],
                      ),
                      decoration: new BoxDecoration(
                        color: Color(0x54ffffff),
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Container(
                      width: 100,
                      child: Row(
                        children: [
                          IconDataWidget(
                            data: "Now",
                            icon: Iconic.share,
                          ),
                        ],
                      ),
                      decoration: new BoxDecoration(
                        color: Color(0x54ffffff),
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                  ]),
                ),
                SizedBox(height: 15),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Event Name Appear Here",
                    style: TextStyle(
                      color: Color(0xff3E3A57),
                      fontSize: 22,
                    ),
                  ),
                ),
                SizedBox(height: 7),
                Row(
                  children: [
                    IconDataWidget(
                        data: "09:00am",
                        icon: Icons.access_time,
                        iconColor: Color(0xff8E8B9D)),
                    SizedBox(width: 30),
                    IconDataWidget(
                        data: "09:00am",
                        icon: Icons.access_time,
                        iconColor: Color(0xff8E8B9D)),
                    SizedBox(width: 30),
                    IconDataWidget(
                        data: "09:00am",
                        icon: Icons.access_time,
                        iconColor: Color(0xff8E8B9D)),
                    SizedBox(width: 30),
                  ],
                ),
                SizedBox(height: 13.8),
                IconDataWidget(
                  data: "Location",
                  icon: Icons.location_on,
                ),
                SizedBox(height: 26),
                IconDataWidget(
                  data: "Info",
                  icon: Icons.info,
                ),
                SizedBox(height: 5),
                Text(
                  s,
                  style: TextStyle(fontSize: 12),
                ),
                Divider(
                  color: Color(0xffD9D8DE),
                  thickness: 1,
                ),
                SizedBox(height: 15),
                Row(
                  children: [
                    Text("Comments", style: TextStyle(fontSize: 16)),
                    Expanded(
                      flex: 2,
                      child: Align(
                        alignment: Alignment.bottomRight,
                        child: Text("See All"),
                      ),
                    )
                  ],
                ),
                ListView(
                  shrinkWrap: true,
                  children: [
                    CommentWidget(),
                    SizedBox(height: 15),
                    CommentWidget(),
                    SizedBox(height: 15),
                    CommentWidget(),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
