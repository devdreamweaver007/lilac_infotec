import 'package:flutter/material.dart';
import 'package:vehup/Commons/bottombar.dart';
import 'package:vehup/Features/Authentication/View/Login_screen.dart';
import 'package:vehup/Features/Requirnments/View/requirnments_screen.dart';
import 'package:vehup/Features/Requirnments/View/select_screen.dart';

enum NavigationType { push, pushReplacement, pop, pushAndRemoveUntil }

void navigate({
  required BuildContext context,
  required Widget screen,
  NavigationType type = NavigationType.push,
}) {
  switch (type) {
    case NavigationType.push:
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => screen),
      );
      break;
    case NavigationType.pushReplacement:
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => screen),
      );
      break;
    case NavigationType.pop:
      Navigator.pop(context);
      break;
    case NavigationType.pushAndRemoveUntil:
      Navigator.of(context).pushAndRemoveUntil(
          MaterialPageRoute(builder: (context) => screen),
          (Route route) => false);
  }
}

goLogin(context) {
  navigate(
      context: context,
      screen: LoginScreen(),
      type: NavigationType.pushReplacement);
}

goHome(context) {
  navigate(
      context: context,
      screen: CustomBottomnavBar(),
      type: NavigationType.pushAndRemoveUntil);
}

goLoginNew(context) {
  navigate(
      context: context,
      screen: LoginScreen(),
      type: NavigationType.pushAndRemoveUntil);
}

goRequernmentScreen(context) {
  navigate(context: context, screen: RequirnmentsScreen());
}

goSelectScreen(context) {
  navigate(context: context, screen: SelectvehicleScreen());
}
