import 'dart:convert';
import 'dart:io';
import 'package:events/helpers/helpers.dart';
import 'package:events/prefs/shared_pref_controller.dart';
import 'package:flutter/cupertino.dart';
import '../../models/user.dart';
import '../api_settings.dart';
import 'package:http/http.dart' as http;

class ApiAuthController with Helpers {
  Future<bool> login(BuildContext context,
      {required String mobile, required String password}) async {
    var url = Uri.parse(ApiSettings.loginUrl);
    var response = await http.post(url, body: {
      'mobile': mobile,
      'password': password
    }, headers: {
      HttpHeaders.acceptHeader: 'application/json',
    });
    if (response.statusCode == 200) {
      var jsonObject = jsonDecode(response.body)['data'];
      User user = User.fromJson(jsonObject);
      SharedPrefController().saveUser(user: user);

      showSnackBar(
          context: context, message: jsonDecode(response.body)['message']);
      return true;
    } else if (response.statusCode == 400) {
      showSnackBar(
          context: context, message: jsonDecode(response.body)['message']);
    }
    return false;
  }
}
