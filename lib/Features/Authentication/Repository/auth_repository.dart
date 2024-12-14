import 'package:dio/dio.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:vehup/Commons/app_strings.dart';
import 'package:vehup/Commons/custom_flushbar.dart';
import 'package:vehup/Extentions/base_url.dart';
import 'package:vehup/Extentions/routes.dart';
import 'package:vehup/Features/Authentication/Model/login_response.dart';

class AuthRepository {

  Future<LoginResponseModel?> userLogin(context,String email, String password)async{
    EasyLoading.show();
    try{
var data = {
  'email': email,
  'password': password
};
var dio = Dio();
var response = await dio.request(
  '${BaseUrl.baseurl}vendor-login',
  options: Options(
    method: 'POST',
  ),
  data: data,
);

if (response.statusCode == 200) {
  EasyLoading.dismiss();
  goHome(context);
  showSuccessFlustbar(context, AppStrings.loginSuccess);
  return LoginResponseModel.fromJson(response.data);
}
else {
  EasyLoading.dismiss();
}
    }on DioException  catch (e){
      EasyLoading.dismiss();
      if(e.response?.statusCode == 400){
        EasyLoading.dismiss();
      showErrorFlustbar(context, AppStrings.loginfailed);
      }else if(e.response?.statusCode==null){
        EasyLoading.dismiss();
        showErrorFlustbar(context, AppStrings.networkError);
      }
    }
  }
}