import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../widgets/login_field_widget.dart';

class AddNewEvent extends StatefulWidget {
  const AddNewEvent({Key? key}) : super(key: key);
  _AddNewEventState createState() => _AddNewEventState();
}

class _AddNewEventState extends State<AddNewEvent> {
  late TextEditingController eventNameController;
  late TextEditingController dateController;
  late TextEditingController timeController;
  late TextEditingController hoursController;
  late TextEditingController categoryNameController;
  late TextEditingController locationController;
  late TextEditingController informationController;
  final dividerSize = 15.0;

  void initState() {
    super.initState();
    eventNameController = TextEditingController();
    dateController = TextEditingController();
    timeController = TextEditingController();
    hoursController = TextEditingController();
    categoryNameController = TextEditingController();
    locationController = TextEditingController();
    informationController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("New Event",
            style: TextStyle(
              fontSize: 30,
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
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(15),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            SizedBox(
              height: 5,
            ),
            LoginFieldWidget(
              controller: eventNameController,
              caption: "Name",
              hintText: "Enter event name",
            ),
            SizedBox(height: dividerSize),
            Row(children: [
              Expanded(
                child: LoginFieldWidget(
                  controller: dateController,
                  caption: "Date",
                  hintText: "21 December 2021",
                ),
              ),
              SizedBox(width: 30),
              Expanded(
                child: LoginFieldWidget(
                  controller: timeController,
                  caption: "Time",
                  hintText: "12:00 PM",
                ),
              ),
            ]),
            SizedBox(height: dividerSize),
            LoginFieldWidget(
              controller: hoursController,
              caption: "Hours",
              hintText: "No. of Hours",
            ),
            SizedBox(height: dividerSize),
            LoginFieldWidget(
              controller: categoryNameController,
              caption: "Category",
              hintText: "category name",
            ),
            SizedBox(height: dividerSize),
            LoginFieldWidget(
              controller: locationController,
              caption: "Location",
              hintText: "location",
            ),
            SizedBox(height: dividerSize),
            LoginFieldWidget(
              controller: informationController,
              caption: "Information",
              hintText: "information",
            ),
            SizedBox(height: dividerSize),
            Text(
              "Capture",
              style: TextStyle(
                fontSize: 15,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 8),

            SizedBox(height: 90),
            //..........................................
            Container(
              margin: EdgeInsets.symmetric(horizontal: 9),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, "/");
                },
                child: Text(
                  "Create new event",
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  primary: Color(0xff253975),
                  minimumSize: Size(double.infinity, 49),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0)),
                ),
              ),
            )
          ]),
        ),
      ),
    );
  }
}
