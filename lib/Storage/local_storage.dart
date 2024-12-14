
import 'package:shared_preferences/shared_preferences.dart';
import 'package:vehup/Extentions/routes.dart';

Future<void> storeToken(String token) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString("token", token);
  }

  Future<void> clearToken(context) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.remove("token");
    goLoginNew(context);
  }