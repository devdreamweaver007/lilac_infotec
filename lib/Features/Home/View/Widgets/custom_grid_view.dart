import 'package:flutter/material.dart';
import 'package:vehup/Commons/appcolors.dart';
import 'package:vehup/Commons/google_fonts.dart';
import 'package:vehup/Extentions/screen_size.dart';
import 'package:vehup/Features/Home/Model/json_response.dart';

class CustomGridView extends StatefulWidget {
  final List<JsonModel> jsonModelList;
  const CustomGridView({super.key, required this.jsonModelList});

  @override
  State<CustomGridView> createState() => _CustomGridViewState();
}

class _CustomGridViewState extends State<CustomGridView> {
  @override
  Widget build(BuildContext context) {
     final double imgheight = ScreenSize.screenwidth*.2;
    return GridView.builder(
              shrinkWrap: true,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 10, 
            mainAxisSpacing: 10, 
            childAspectRatio: 1.1,
          ),
          itemCount: widget.jsonModelList.length,
          itemBuilder: (context, index) {
            var datas = widget.jsonModelList[index];
            return Container(
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                      color: Colors.black.withOpacity(0.1),
                      spreadRadius: 0.4,
                      blurRadius: 0.3),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                   datas.image ?? "",
                    height: imgheight,
                    width: imgheight,
                    fit: BoxFit.fill,
                  ),
                  Text(
                    datas.title ?? "",
                    style: normaFont(fontweight: FontWeight.bold, fontsize: ScreenSize.screenwidth*.04, color: Appcolors.black),
                  ),
                  Text(
                    datas.subtitle ?? "",
                    style: normaFont(fontweight: FontWeight.w600, fontsize: ScreenSize.screenwidth*.03, color: Appcolors.grey),
                  ),
                ],
              ),
            );
          },
        );
  }
}