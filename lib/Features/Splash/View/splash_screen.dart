import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:vehup/Commons/appcolors.dart';
import 'package:vehup/Extentions/screen_size.dart';
import 'package:vehup/Extentions/string_extention.dart';
import 'package:vehup/Features/Splash/ViewModel/splash_viewmodel.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    final splashViewModel = Provider.of<SplashViewmodel>(context,listen: false);
    splashViewModel.changeSplashScreen(context);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Appcolors.mainBackgroundColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
           Image.asset("logo.png".imagePath,width: ScreenSize.screenwidth*.4,height: ScreenSize.screenwidth*.4,)
          ],
        ),
      ),
    );
  }
}