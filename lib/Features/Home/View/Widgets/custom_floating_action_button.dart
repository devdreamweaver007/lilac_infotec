import 'package:flutter/material.dart';
import 'package:vehup/Commons/appcolors.dart';
import 'package:vehup/Extentions/routes.dart';

customFloatingActionbutton(context){
  return FloatingActionButton(
        backgroundColor: Appcolors.buttonColor,
        child: Icon(Icons.add,color: Appcolors.white,),
        onPressed: (){
          goRequernmentScreen(context);
        });
}