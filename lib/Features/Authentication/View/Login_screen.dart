import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:vehup/Commons/app_strings.dart';
import 'package:vehup/Commons/appcolors.dart';
import 'package:vehup/Commons/custom_button.dart';
import 'package:vehup/Commons/google_fonts.dart';
import 'package:vehup/Commons/text_decoration.dart';
import 'package:vehup/Extentions/screen_size.dart';
import 'package:vehup/Extentions/string_extention.dart';
import 'package:vehup/Features/Authentication/ViewModel/login_view_model.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    final loginViewmodel = Provider.of<LoginViewModel>(context);
    double imgsize = ScreenSize.screenwidth * .2;
    return Scaffold(
      backgroundColor: Appcolors.mainBackgroundColor,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Form(
            key: _formkey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: ScreenSize.screenwidth * .4),
                Center(
                    child: Image.asset(
                  "loginlogo.png".imagePath,
                  height: imgsize,
                  width: imgsize,
                )),
                SizedBox(height: ScreenSize.screenwidth * .1),
                Center(
                  child: SizedBox(
                    width: ScreenSize.screenwidth * .5,
                    child: Text(
                      textAlign: TextAlign.center,
                      AppStrings.login,
                      style: normaFont(
                          fontweight: FontWeight.w600,
                          fontsize: ScreenSize.screenwidth * .04,
                          color: Appcolors.black),
                    ),
                  ),
                ),
                SizedBox(height: ScreenSize.screenwidth * .1),
                _customtext(AppStrings.email),
                SizedBox(
                  height: ScreenSize.screenwidth * .02,
                ),
                TextFormField(
                    controller: loginViewmodel.emailController,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return AppStrings.required;
                      } else if (value.isValidEmail()) {
                        return null;
                      } else {
                        return AppStrings.notAvalidEmail;
                      }
                    },
                    decoration: customtextfieldDecoration(
                        labeltext: AppStrings.enterEmail,
                        needSuffixIcon: false,
                        prefixIcon: Icons.email_outlined)),
                SizedBox(height: ScreenSize.screenwidth * .03),
                _customtext(AppStrings.password),
                SizedBox(
                  height: ScreenSize.screenwidth * .02,
                ),
                TextFormField(
                    controller: loginViewmodel.passwordController,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return AppStrings.required;
                      }
                    },
                    obscureText: loginViewmodel.obsecuretext,
                    decoration: customtextfieldDecoration(
                        ontap: loginViewmodel.changeobsecuretext,
                        labeltext: AppStrings.enterPassword,
                        needSuffixIcon: true,
                        suffixIcon: loginViewmodel.obsecuretext
                            ? Icons.visibility
                            : Icons.visibility_off,
                        prefixIcon: Icons.lock)),
                SizedBox(
                  height: ScreenSize.screenwidth * .01,
                ),
                Align(
                  alignment: Alignment.topRight,
                  child: Text(
                    AppStrings.forgotpass,
                    style: normaFont(
                        fontweight: FontWeight.w500,
                        fontsize: ScreenSize.screenwidth * .04,
                        color: Appcolors.blue),
                  ),
                ),
                SizedBox(
                  height: ScreenSize.screenwidth * .35,
                ),
                custombutton(
                    text: AppStrings.loginButton,
                    ontap: () {
                      if (_formkey.currentState!.validate()) {
                        loginViewmodel.userLogin(
                            context,
                            loginViewmodel.emailController.text,
                            loginViewmodel.passwordController.text);
                      }
                    }),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                      Text(AppStrings.donthaveanacc,style: normaFont(
                        fontweight: FontWeight.w500,
                        fontsize: ScreenSize.screenwidth * .04,
                        color: Appcolors.black),),
                        Text(AppStrings.signUp,style: normaFont(
                        fontweight: FontWeight.w500,
                        fontsize: ScreenSize.screenwidth * .04,
                        color: Appcolors.blue),)
                    ],)
              ],
            ),
          ),
        ),
      ),
    );
  }

  _customtext(String text) {
    return Text(
      text,
      style: normaFont(
          fontweight: FontWeight.w500,
          fontsize: ScreenSize.screenwidth * .04,
          color: Appcolors.black),
    );
  }
}
