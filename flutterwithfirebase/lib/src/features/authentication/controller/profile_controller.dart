// import 'package:flutterwithfirebase/src/repository/authentication_repository.dart';
// import 'package:flutterwithfirebase/src/repository/user_repository.dart';
// import 'package:get/get.dart';

// class ProfileController extends GetxController{
//   static ProfileController get instance=>Get.find();
//   final  _authRepo=Get.put(AuthenticationRepository());
// final _userRepo=Get.put(UserRepository());

// getUser() async {
//   final email = _authRepo.firebaseUser.value?.email;
//   if (email != null) {
//     try {
//       final userDetails = await _userRepo.getuserDetail(email);
//       return userDetails;
//     } catch (e) {
//       Get.snackbar("Error", "Failed to fetch user details");
//       return null;
//     }
//   } else {
//     Get.snackbar("Error", "Login to continue");
//     return null;
//   }
// }


// }
import 'package:get/get.dart';

import '../../../repository/authentication_repository.dart';
import '../../../repository/user_repository.dart';
import '../modals/usermodel.dart';

class ProfileController extends GetxController {
  static ProfileController get instance => Get.find();
  final _authRepo = Get.put(AuthenticationRepository());
  final _userRepo = Get.put(UserRepository());

  // Method to get all users
  // Future<List<Usermodel>> getAllUsers() async {
  //   try {
  //     final users = await _userRepo.getallUsers();
  //     return users;
  //   } catch (e) {
  //     Get.snackbar("Error", "Failed to fetch user details");
  //     return [];
  //   }
  // }
  Stream<List<Usermodel>> getAllUsersStream() {
    return _userRepo.getAllUsersStream();
  }
}
