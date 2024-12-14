import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:provider/provider.dart';
import 'package:vehup/Extentions/screen_size.dart';
import 'package:vehup/Features/Authentication/ViewModel/login_view_model.dart';
import 'package:vehup/Features/Home/ViewModel/home_view_model.dart';
import 'package:vehup/Features/Requirnments/ViewModel/requernments_view_model.dart';
import 'package:vehup/Features/Splash/View/splash_screen.dart';
import 'package:vehup/Features/Splash/ViewModel/splash_viewmodel.dart';

void main() async{
  runApp(const MyApp());
  configLoading();
}
void configLoading() {
  EasyLoading.instance
    ..displayDuration = const Duration(milliseconds: 2000)
    ..indicatorType = EasyLoadingIndicatorType.fadingCircle
    ..loadingStyle = EasyLoadingStyle.dark
    ..indicatorSize = 45.0
    ..radius = 10.0
    ..progressColor = Colors.yellow
    ..backgroundColor = Colors.green
    ..indicatorColor = Colors.yellow
    ..textColor = Colors.yellow
    ..maskColor = Colors.blue.withOpacity(0.5)
    ..userInteractions = true
    ..dismissOnTap = false;
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    ScreenSize.screenwidth = MediaQuery.of(context).size.width;
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_)=> SplashViewmodel()),
        ChangeNotifierProvider(create: (_)=> LoginViewModel()),
        ChangeNotifierProvider(create: (_)=> HomeViewModel()),
         ChangeNotifierProvider(create: (_)=> RequirnmentsViewmodel()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: SplashScreen(),
        builder: EasyLoading.init(),
      ),
    );
  }
}

