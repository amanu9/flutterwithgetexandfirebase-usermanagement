import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutterwithfirebase/src/features/authentication/modals/usermodel.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:get/route_manager.dart';

class UserRepository extends GetxController{
  static UserRepository get instance =>Get.find();
  final _db=FirebaseFirestore.instance;
  

  createUser(Usermodel  user)async{
    await _db.collection("Users").add(user.toJson()).whenComplete(
      
      ()=>Get.snackbar('message', 'Your data saved',
      snackPosition:SnackPosition.BOTTOM,
      backgroundColor:Colors.amber. withOpacity(0.3),
      colorText: Colors.black

    ))
    .catchError((error,StackTrace){
Get.snackbar("error", "something went wrong try  again",
snackPosition:SnackPosition.BOTTOM,
      backgroundColor:Colors.redAccent. withOpacity(0.3),
      colorText: Colors.red);
      print(error.toString());
    }


);
    }

    // get single users
    Future<Usermodel> getuserDetail(String email) async {
  final snapshot = await _db.collection("Users").where("Email", isEqualTo: email).get();
  if (snapshot.docs.isNotEmpty) {
    final userData = snapshot.docs.map((e) => Usermodel.fromSnapshot(e)).single;
    return userData;
  } else {
    throw Exception("No user found with this email.");
  }
}

//get all users
//         Future <List <Usermodel>> getallUsers ()async{
//       final snapshot=await _db.collection("Users").get();
// final userData= snapshot.docs.map((e)=>Usermodel.fromSnapshot(e)).toList();
// return  userData;
  
//     }
// Future<List<Usermodel>> getallUsers() async {
//   final snapshot = await _db.collection("Users").get();
//   final userData = snapshot.docs.map((e) => Usermodel.fromSnapshot(e)).toList();
//   return userData;
// }
 Stream<List<Usermodel>> getAllUsersStream() {
    return _db.collection("Users").snapshots().map((snapshot) =>
        snapshot.docs.map((doc) => Usermodel.fromSnapshot(doc)).toList());
  }
}

    
    
  

