import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class EventsScreen extends StatefulWidget {
  const EventsScreen({Key? key}) : super(key: key);
  _EventsScreenState createState() => _EventsScreenState();
}

class _EventsScreenState extends State<EventsScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
    _tabController.addListener(() {
      if (_tabController.indexIsChanging) {
        setState(() {});
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Events",
          style: TextStyle(
            color: Color(0xff3E3A57),
            fontSize: 17,
          ),
        ),
        toolbarHeight: 152,
        flexibleSpace: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/AppBarImage.png"),
              fit: BoxFit.cover,
            ),
          ),
        ),
        backgroundColor: Color(0x00f44336),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          SizedBox(
            height: 128,
            child: Column(
              children: [
                SizedBox(height: 40),
                Text(
                  "Category Name",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 22,
                    color: Color(0xff3E3A57),
                  ),
                ),
                SizedBox(height: 14),
                Text(
                  "12 Event",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 11,
                    color: Color(0xffFF4E62),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 50,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: AppBar(
                backgroundColor: Color(0xffFBFBFC),
                bottom: TabBar(
                    controller: _tabController,
                    indicatorColor: Color(0xff253975),
                    labelColor: Color(0xff253975),
                    unselectedLabelColor: Color(0xff3A3652),
                    overlayColor: MaterialStateProperty.resolveWith(
                        (Set<MaterialState> states) {
                      if (states.contains(MaterialState.hovered))
                        return Colors.white;
                    }),
                    tabs: [
                      Tab(
                        child: Text('Active',
                            style: TextStyle(
                                fontWeight: _tabController.index == 0
                                    ? FontWeight.bold
                                    : FontWeight.w100)),
                      ),
                      Tab(
                        child: Text('End',
                            style: TextStyle(
                                fontWeight: _tabController.index == 1
                                    ? FontWeight.bold
                                    : FontWeight.w100)),
                      ),
                    ]),
              ),
            ),
          ),
          SizedBox(
              height:400,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: TabBarView(
                  controller: _tabController,
                  children: [
                    Text("hahahah"),
                    Text("hahahah"),
                  ],
                ),
              ))
        ],
      ),
    );
  }
}
