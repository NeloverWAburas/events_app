import 'dart:convert';
import 'dart:io';
import 'package:events/api/api_settings.dart';
import 'package:events/helpers/helpers.dart';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
import '../../models/api_base_response.dart';
import '../../models/category_model.dart';
import '../../prefs/shared_pref_controller.dart';

//print(4);
class ApiCategoryController with Helpers {
  Future<List<CategoryModel>> getCategories({
    required BuildContext context,
  }) async {
    var Url = Uri.parse(ApiSettings.categoriesUrl);
    var response = await http.get(Url, headers: {
      HttpHeaders.authorizationHeader: SharedPrefController().token
    });
    if (response.statusCode == 200) {
      var jsonResponse = jsonDecode(response.body);
      ApiBaseResponse apiResponse = ApiBaseResponse.fromJson(jsonResponse);
      return apiResponse.list;
    } else if (response.statusCode == 500) {
      showSnackBar(
          context: context, message: "Error in server, try again later");
    }
    return [];
  }
}
