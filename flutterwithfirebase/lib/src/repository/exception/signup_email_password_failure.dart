import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignupEmailPasswordFailure {
 final String message;

  SignupEmailPasswordFailure([this.message="Error to make registartion"]);

  factory SignupEmailPasswordFailure.code(String code){

    switch(code){
      case 'weak-password':return SignupEmailPasswordFailure('the password is weak');
      case 'invalid-email':return SignupEmailPasswordFailure('your emaiil is not valid');
        case 'email-taken':return SignupEmailPasswordFailure('this email already taken');
      default :return SignupEmailPasswordFailure();
    }

  }


}