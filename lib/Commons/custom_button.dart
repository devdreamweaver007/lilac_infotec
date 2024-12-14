import 'package:flutter/material.dart';
import 'package:vehup/Commons/appcolors.dart';
import 'package:vehup/Commons/google_fonts.dart';
import 'package:vehup/Extentions/screen_size.dart';

custombutton({required String text,required VoidCallback ontap}) {
  return GestureDetector(
    onTap: ontap,
    child: Container(
      padding: EdgeInsets.symmetric(vertical: 15),
      decoration: BoxDecoration(
          color: Appcolors.buttonColor,
          borderRadius: BorderRadius.circular(8),
          boxShadow: [BoxShadow(color: Appcolors.grey, spreadRadius: .4,blurRadius: 3)]),
      width: ScreenSize.screenwidth,
      child: Center(
        child: Text(
          text,
          style: normaFont(
              fontweight: FontWeight.bold,
              fontsize: ScreenSize.screenwidth * .04,
              color: Appcolors.white),
        ),
      ),
    ),
  );
}
