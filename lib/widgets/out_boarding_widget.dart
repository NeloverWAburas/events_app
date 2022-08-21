import 'package:flutter/material.dart';

class OutBoardingWidget extends StatelessWidget {
  late String _t1;
  late String _t2;
  late String _path;

  OutBoardingWidget({
    required String t1,
    required String t2,
    required String path,
  }) {
    _t1 = t1;
    _t2 = t2;
    _path = path;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(_path),
        SizedBox(height: 15),
        Text(
          _t1,
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 25, color: Colors.black),
        ),
        SizedBox(height: 15),
        Text(
          _t2,
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Color(0xff707070),
          ),
        ),
      ],
    );
  }
}
