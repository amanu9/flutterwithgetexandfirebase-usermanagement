import 'package:flutter/material.dart';
import 'package:flutterwithfirebase/src/repository/authentication_repository.dart';
import 'package:get/get.dart';

class LoginController extends GetxController{
  static LoginController get instance=>Get.find();
  final email=TextEditingController();
  final password=TextEditingController();


  Future <void> loginuser(String email,String password)async{
    String? error=await AuthenticationRepository.instance.loginwithEmailAndPassword(email, password);
    if(error !=null){
      Get.showSnackbar(GetSnackBar(message: error.toString(),));

    }

  }

}