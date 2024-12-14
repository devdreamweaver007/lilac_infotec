import 'package:flutter/material.dart';
import 'package:vehup/Commons/appcolors.dart';
import 'package:vehup/Commons/google_fonts.dart';
import 'package:vehup/Extentions/screen_size.dart';

customAllAppbar({required String title,required context,required double width}) {
  return AppBar(
    title: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        GestureDetector(
          onTap: (){
            Navigator.pop(context);
          },
          child: Icon(
            Icons.arrow_back,
            color: Appcolors.black,
          ),
        ),
        SizedBox(
          width: width,
        ),
        Text(
          title,
          style: normaFont(
              fontweight: FontWeight.w600,
              fontsize: ScreenSize.screenwidth * .04,
              color: Appcolors.black),
        )
      ],
    ),
    automaticallyImplyLeading: false,
    elevation: 1,
    scrolledUnderElevation: 1,
    backgroundColor: Appcolors.white,
  );
}
