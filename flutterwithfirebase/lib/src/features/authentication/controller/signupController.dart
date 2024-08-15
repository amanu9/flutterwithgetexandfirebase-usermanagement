import 'package:flutter/material.dart';
import 'package:flutterwithfirebase/src/features/authentication/modals/usermodel.dart';
import 'package:flutterwithfirebase/src/features/authentication/screens/otpscreen.dart';
import 'package:flutterwithfirebase/src/features/authentication/screens/profile_Page.dart';
import 'package:flutterwithfirebase/src/repository/authentication_repository.dart';
import 'package:flutterwithfirebase/src/repository/user_repository.dart';
import 'package:get/get.dart';

class Signupcontroller extends GetxController{
    //get instance=>Get.find();
    static Signupcontroller get instance=>Get.find();

  final name=TextEditingController();
  final lastname=TextEditingController();
  final password=TextEditingController();
   final email=TextEditingController();
   final phoneNo=TextEditingController();

   // instance of user repository
   var userRepo=Get.put(UserRepository());
   //

  void registerUser(String email,String password){
AuthenticationRepository.instance.createUserwithEmailAndPassword(email,password);
  }
  void phoneAuthentication(String phoneNo){

    AuthenticationRepository.instance.phoneAuthentication(phoneNo);

  }

  Future <void> creatUser(Usermodel user)async{

   await userRepo.createUser( user);
   // if want to go then to otp verification after the data was inserted
  // phoneAuthentication(user.phonenumber);
   Get.to(const ProfilePage());
   
  

  }

}