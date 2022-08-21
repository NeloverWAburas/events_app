import 'package:events/widgets/category_widget.dart';
import 'package:flutter/material.dart';

class CategoriesScreen extends StatefulWidget {
  const CategoriesScreen({Key? key}) : super(key: key);
  _CategoriesScreenState createState() => _CategoriesScreenState();
}

class _CategoriesScreenState extends State<CategoriesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: <Widget>[
              SizedBox(height: 42),
              ListTile(
                title: Text(
                  "Categories",
                  style: TextStyle(
                      color: Color(0xff1b2d49),
                      fontSize: 17,
                      fontWeight: FontWeight.bold),
                ),
                contentPadding: EdgeInsets.symmetric(horizontal: 0.0),
                trailing: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                    color: Color(0xfff6f6f8),
                    shape: BoxShape.rectangle,
                  ),
                  child: IconButton(
                    padding: EdgeInsets.all(0),
                    color: Color(0xff4e486a),
                    hoverColor: Color(0x00ffffff),
                    iconSize: 30,
                    icon: Icon(Icons.add),
                    onPressed: () {},
                  ),
                ),
              ),
              /////////////////////////////////////////
              SizedBox(height: 30),
              GridView.builder(
                  gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                    maxCrossAxisExtent: 200,
                    childAspectRatio: 165 / 185,
                    crossAxisSpacing: 14,
                    mainAxisSpacing: 14,
                  ),
                  shrinkWrap: true,
                  itemCount: 6,
                  itemBuilder: (BuildContext context, index) {
                    return CategoryWidget();
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
