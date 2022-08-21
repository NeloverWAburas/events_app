import 'package:flutter/material.dart';
import 'package:fluttericon/iconic_icons.dart';

class CategoryWidget extends StatelessWidget {
  const CategoryWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
        //color: Colors.amber,
        borderRadius: BorderRadius.circular(15),
        border: Border.all(color: Color(0xffececef)),
      ),
      child: Column(
        children: <Widget>[
          Expanded(
            flex: 2,
            child: Container(
              padding: EdgeInsets.only(bottom: 10, left: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.0),
                image: DecorationImage(
                  image: AssetImage("assets/images/Mask Group.png"),
                  fit: BoxFit.cover,
                ),
              ),
              child: Align(
                alignment: Alignment.bottomLeft,
                child: Container(
                  padding: EdgeInsets.only(left: 7),
                  width: 82,
                  height: 21,
                  decoration: new BoxDecoration(
                    color: Color(0x54ffffff),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Row(children: [
                    Icon(
                      Iconic.share,
                      color: Colors.white,
                      size: 12.0,
                    ),
                    SizedBox(width: 6),
                    Text(
                      "6 Events",
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.white,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ]),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8),
            child: Text("Information Technology",
                style: TextStyle(
                  fontSize: 12,
                )),
          ),
        ],
      ),
    );
  }
}
