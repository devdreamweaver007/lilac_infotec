import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:vehup/Features/Home/Model/json_response.dart';

class HomeViewModel extends ChangeNotifier {
  List<JsonModel> jsonModelList = [];

  Future<void> loadJsonData() async {
    String jsonString = await rootBundle.loadString('assets/jsons/service.json');
    List<dynamic> jsonData = jsonDecode(jsonString);
      jsonModelList = jsonData.map((json) => JsonModel.fromJson(json)).toList();
      notifyListeners();
  }
}