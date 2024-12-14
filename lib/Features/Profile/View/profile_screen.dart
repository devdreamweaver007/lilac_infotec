import 'package:flutter/material.dart';
import 'package:vehup/Commons/appcolors.dart';
import 'package:vehup/Extentions/screen_size.dart';
import 'package:vehup/Storage/local_storage.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          GestureDetector(
            onTap: (){
              clearToken(context);
            },
            child: CircleAvatar(
              radius: ScreenSize.screenwidth*.1,
              backgroundColor: Appcolors.errorColor,
              child: Icon(Icons.logout,color: Appcolors.white,),
            ),
          ),
        ],
      ),
    ),);
  }
}