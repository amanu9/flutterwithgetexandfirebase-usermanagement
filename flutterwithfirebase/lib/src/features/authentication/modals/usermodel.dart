// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:cloud_firestore/cloud_firestore.dart';

class Usermodel {
  final String? id;
   final String? name;
   final String phonenumber;
   final String password;
   final String email;


  Usermodel({
    this.id,
    required this.email,
    required this.password,
    required this.name,
     required this.phonenumber,
  });

 Map<String, dynamic> toJson(){
    return {
      "Fullname":name,
      "Email":email,
      "Password":password,
      "Phone":phonenumber
    };
  }

  
// TO GET USER LIST 
  factory Usermodel.fromSnapshot(DocumentSnapshot<Map<String,dynamic>>document ){
    final data=document.data()!;
     return Usermodel(
      id: document.id,
      email: data['Email'],
      password: data["Password"], 
      name: data["Fullname"], 
      phonenumber: data["Phone"],
      );

  }
  //
  
  
}
