import 'package:flutter/material.dart';
import 'package:vehup/Commons/appcolors.dart';

homeAppbar() {
  return AppBar(
    backgroundColor: Appcolors.mainBackgroundColor,
    scrolledUnderElevation: 0,
    elevation: 0,
    title: Row(
      children: [
        Icon(Icons.menu),
        Spacer(),
        Icon(Icons.notifications_outlined)
      ],
    ),
  );
}
