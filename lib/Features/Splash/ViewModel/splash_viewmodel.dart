import 'dart:async';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:vehup/Extentions/routes.dart';

class SplashViewmodel extends ChangeNotifier {

changeSplashScreen(context) async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  String? token = prefs.getString("token");
  
  Timer(Duration(seconds: 2), () {
    if (token != null && token.isNotEmpty) {
      goHome(context);
    } else {
      goLogin(context);
    }
  });
}

}