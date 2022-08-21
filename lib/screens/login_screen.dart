import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widgets/login_field_widget.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  late TextEditingController _phoneController;
  late TextEditingController _passwordController;

  void initState() {
    super.initState();
    _phoneController = TextEditingController();
    _passwordController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //SizedBox(height: 90),
            Center(
              child: Text(
                "UCAS Events",
                style: TextStyle(
                    fontSize: 45,
                    color: Color(0xff233a73),
                    fontFamily: 'Pacifico'),
              ),
            ),
            SizedBox(height: 73),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 16),
              child: Column(children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Welcome to back",
                    style: TextStyle(
                      fontSize: 11,
                      color: Color(0xff443f5d),
                    ),
                  ),
                ),
                SizedBox(height: 13),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Login with",
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(height: 35),
                LoginFieldWidget(
                    caption: "Phone",
                    hintText: "Enter your phone",
                    obscureText: false,
                    controller: _phoneController),
                SizedBox(height: 25),
                LoginFieldWidget(
                    caption: "Password",
                    hintText: "Enter Password",
                    obscureText: true,
                    controller: _passwordController),
                SizedBox(height: 78),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 9),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, "/events_screen");
                    },
                    child: Text(
                      "Sign in",
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
          ],
        ),
      ),
    );
  }
}
