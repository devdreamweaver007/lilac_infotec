import 'package:flutter/material.dart';
import 'package:vehup/Commons/appcolors.dart';

customtextfieldDecoration(
    {required String labeltext,
    required bool needSuffixIcon,
    IconData? suffixIcon,
    required IconData prefixIcon,
    VoidCallback? ontap
    }) {
  return InputDecoration(
      hintText: labeltext,
      suffixIcon: GestureDetector(
        onTap: ontap,
        child: Icon(needSuffixIcon ? suffixIcon : null)),
      prefixIcon: Icon(prefixIcon),
      filled: true,
      fillColor: Appcolors.white,
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Appcolors.brownColor, width: .3),
        borderRadius: BorderRadius.circular(8),
      ),
      border: OutlineInputBorder(
        borderSide: BorderSide(color: Appcolors.black, width: .3),
        borderRadius: BorderRadius.circular(8),
      ));
}
