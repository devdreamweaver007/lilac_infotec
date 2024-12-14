import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:vehup/Commons/app_strings.dart';
import 'package:vehup/Commons/appcolors.dart';
import 'package:vehup/Commons/custom_appbar.dart';
import 'package:vehup/Extentions/screen_size.dart';
import 'package:vehup/Features/Requirnments/ViewModel/requernments_view_model.dart';

class SelectvehicleScreen extends StatefulWidget {
  const SelectvehicleScreen({super.key});

  @override
  State<SelectvehicleScreen> createState() => _SelectvehicleScreenState();
}

class _SelectvehicleScreenState extends State<SelectvehicleScreen> {
  @override
  Widget build(BuildContext context) {
    final double imgheight = ScreenSize.screenwidth * .3;
    final double imgSize = ScreenSize.screenwidth * .2;
    final selectviewmodel = Provider.of<RequirnmentsViewmodel>(context);
    return Scaffold(
      backgroundColor: Appcolors.mainBackgroundColor,
      appBar: customAllAppbar(
          title: AppStrings.selectVehicle,
          context: context,
          width: ScreenSize.screenwidth * .1),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Appcolors.white),
                    child: Column(
                      children: [
                        Image.asset(
                          selectviewmodel.availablevehice[0]["image"],
                          height: imgSize,
                          width: imgheight,
                          fit: BoxFit.fill,
                        ),
                        Text(selectviewmodel.availablevehice[0]["title"])
                      ],
                    ),
                  ),
                  Spacer(),
                  Container(
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Appcolors.white),
                    child: Column(
                      children: [
                        Image.asset(
                          selectviewmodel.availablevehice[1]["image"],
                          height: imgSize,
                          width: imgheight,
                          fit: BoxFit.fill,
                        ),
                        Text(selectviewmodel.availablevehice[1]["title"])
                      ],
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
