import 'package:flutter/material.dart';
import 'package:vehup/Extentions/string_extention.dart';

class RequirnmentsViewmodel extends ChangeNotifier {
 List <Map> availablevehice = [
  {
    "image":"car.png".imagePath,
    "title":"Car"
  },
  {
    "image":"bike.png".imagePath,
    "title":"Bike"
  }
 ];
}