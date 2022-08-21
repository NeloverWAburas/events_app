import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../widgets/out_boarding_widget.dart';

class OutBoardingScreen extends StatefulWidget {
  const OutBoardingScreen({Key? key}) : super(key: key);
  _OutBoardingScreenState createState() => _OutBoardingScreenState();
}

class _OutBoardingScreenState extends State<OutBoardingScreen> {
  late PageController _pageController;
  late Color _color;
  int value = 0;
  void initState() {
    super.initState();
    _pageController = PageController();
    _color = Color(0xffb6bcce);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: ConstrainedBox(
              constraints: BoxConstraints(
                minHeight: 0,
                maxHeight: 400,
                minWidth: 0,
                maxWidth: 250,
              ),
              child: PageView(
                controller: _pageController,
                scrollDirection: Axis.horizontal,
                children: [
                  OutBoardingWidget(
                      t1: "Subscribe events",
                      t2: "by using this app you will subscribe your event easily and quickly.",
                      path: "assets/images/page1.png"),
                  OutBoardingWidget(
                      t1: "Online payment",
                      t2: "this app provide you to pay through multiple methods such as: Visa, PayPal and cash.",
                      path: "assets/images/page2.png"),
                  OutBoardingWidget(
                      t1: "Create events",
                      t2: "“you can create your own event in the application free and invite your friends",
                      path: "assets/images/page3.png"),
                ],
              ),
            ),
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 10,
                height: 10,
                decoration: BoxDecoration(
                  color: value == 0
                      ? _color = Color(0xff253975)
                      : _color = Color(0xffb6bcce),
                  borderRadius: BorderRadius.circular(25),
                ),
                margin: EdgeInsetsDirectional.only(end: 8),
              ),
              Container(
                width: 10,
                height: 10,
                decoration: BoxDecoration(
                  color: value == 1
                      ? _color = Color(0xff253975)
                      : _color = Color(0xffb6bcce),
                  borderRadius: BorderRadius.circular(25),
                ),
                margin: EdgeInsetsDirectional.only(end: 8),
              ),
              Container(
                width: 10,
                height: 10,
                decoration: BoxDecoration(
                  color: value == 2
                      ? _color = Color(0xff253975)
                      : _color = Color(0xffb6bcce),
                  borderRadius: BorderRadius.circular(25),
                ),
              ),
            ],
          ),
          SizedBox(height: 35),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: ElevatedButton(
              onPressed: () {
                if (value < 2) {
                  _pageController.nextPage(
                      duration: Duration(milliseconds: 200),
                      curve: Curves.easeIn);
                } else {
                  Navigator.pushNamed(context, "/login_screen");
                }
                setState(() {
                  ++value;
                  print(value);
                });
              },
              child: Text(
                "Next",
                style: TextStyle(fontWeight: FontWeight.w300),
              ),
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                minimumSize: Size(double.infinity, 55),
                primary: Color(0xff253975),
              ),
            ),
          ),
          SizedBox(height: 15),
          RichText(
            text: TextSpan(
              text: "Already Have an account?",
              style: TextStyle(
                color: Color(0xff423e5b),
              ),
              children: [
                TextSpan(text: " "),
                TextSpan(
                  text: "Sign In",
                  recognizer: TapGestureRecognizer()
                    ..onTap = () {
                      Navigator.pushNamed(context, "/login_screen");
                    },
                  style: TextStyle(
                      color: Color(0xff253975), fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
