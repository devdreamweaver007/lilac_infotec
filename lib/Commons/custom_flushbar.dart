import 'package:another_flushbar/flushbar.dart';
import 'package:flutter/material.dart';
import 'package:vehup/Commons/appcolors.dart';

customFlushbar(context, String message, IconData icon, Color backgroundColor) {
  return Flushbar(
    flushbarPosition: FlushbarPosition.TOP,
    borderRadius: BorderRadius.circular(12),
    padding: EdgeInsets.all(16),
    margin: EdgeInsets.symmetric(vertical: 16, horizontal: 16),
    backgroundColor: backgroundColor,
    message: message,
    icon: Icon(icon),
    duration: Duration(seconds: 3),
  )..show(context);
}

showSuccessFlustbar(
  context,
  String message,
) {
  return customFlushbar(
      context, message, Icons.sentiment_satisfied, Appcolors.successColor);
}

showErrorFlustbar(
  context,
  String message,
) {
  return customFlushbar(
      context, message, Icons.sentiment_dissatisfied, Appcolors.errorColor);
}
