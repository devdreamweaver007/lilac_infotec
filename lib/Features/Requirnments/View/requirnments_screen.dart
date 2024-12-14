import 'package:flutter/material.dart';
import 'package:vehup/Commons/app_strings.dart';
import 'package:vehup/Commons/appcolors.dart';
import 'package:vehup/Commons/custom_appbar.dart';
import 'package:vehup/Commons/custom_button.dart';
import 'package:vehup/Extentions/routes.dart';
import 'package:vehup/Extentions/screen_size.dart';

class RequirnmentsScreen extends StatefulWidget {
  const RequirnmentsScreen({super.key});

  @override
  State<RequirnmentsScreen> createState() => _RequirnmentsScreenState();
}

class _RequirnmentsScreenState extends State<RequirnmentsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Appcolors.mainBackgroundColor,
      appBar: customAllAppbar(
          title: AppStrings.requirermentTitle,
          context: context,
          width: ScreenSize.screenwidth * .2),
      body: SingleChildScrollView(
          child: Column(
        children: [],
      )),
      bottomSheet: Container(
        padding: EdgeInsets.all(16),
        height: ScreenSize.screenwidth * .23,
        color: Appcolors.mainBackgroundColor,
        child: custombutton(
            text: AppStrings.createrequirnments,
            ontap: () {
              goSelectScreen(context);
            }),
      ),
    );
  }
}
