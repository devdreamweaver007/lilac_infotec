import 'package:flutter/material.dart';
import 'package:vehup/Features/Authentication/Repository/auth_repository.dart';
import 'package:vehup/Storage/local_storage.dart';

class LoginViewModel extends ChangeNotifier {
  AuthRepository authrepo = AuthRepository();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool obsecuretext = true;
  changeobsecuretext(){
    obsecuretext = !obsecuretext;
    notifyListeners();
  }

  userLogin(context,String email,String password)async{
    authrepo.userLogin(context,email,password).then((value){
      if(value!=null){
       storeToken(value.token ?? "");
      }
    });
    notifyListeners();
  }
}