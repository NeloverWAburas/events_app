import 'package:shared_preferences/shared_preferences.dart';

import '../models/user.dart';

enum PrefsKeys {
  loggedIn,
  name,
  id,
  mobile,
  gender,
  token,
}

class SharedPrefController {
  static final SharedPrefController _instance = SharedPrefController._();
  SharedPrefController._();

  late SharedPreferences _sharedPreferences;

  factory SharedPrefController() {
    return _instance;
  }

  Future<void> initPref() async {
    _sharedPreferences = await SharedPreferences.getInstance();
  }

  Future<void> saveUser({required User user}) async {
    await _sharedPreferences.setBool(PrefsKeys.loggedIn.toString(), true);
    await _sharedPreferences.setString(PrefsKeys.name.toString(), user.name);
    await _sharedPreferences.setInt(PrefsKeys.id.toString(), user.id);
    await _sharedPreferences.setString(
        PrefsKeys.gender.toString(), user.gender);
    await _sharedPreferences.setString(
        PrefsKeys.mobile.toString(), user.mobile);
    await _sharedPreferences.setString(
        PrefsKeys.token.toString(), 'Bearer ' + user.token);
  }

  bool get loggedIn =>
      _sharedPreferences.getBool(PrefsKeys.loggedIn.toString()) ?? false;

  String get token =>
      _sharedPreferences.getString(PrefsKeys.token.toString()) ?? "";

  Future<bool> clear() async {
    return await _sharedPreferences.clear();
  }
}
