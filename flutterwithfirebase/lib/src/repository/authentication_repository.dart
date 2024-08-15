import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutterwithfirebase/src/features/authentication/screens/forgatpassword_phone.dart';
import 'package:flutterwithfirebase/src/features/authentication/screens/login.dart';
import 'package:flutterwithfirebase/src/features/authentication/screens/newpage.dart';
import 'package:flutterwithfirebase/src/features/authentication/screens/otpscreen.dart';
import 'package:flutterwithfirebase/src/features/authentication/screens/profile_Page.dart';
import 'package:flutterwithfirebase/src/features/authentication/screens/signuppage.dart';
import 'package:flutterwithfirebase/src/features/post.dart';
import 'package:get/get.dart';
import 'package:get/state_manager.dart';

import 'exception/signup_email_password_failure.dart';

class AuthenticationRepository extends GetxController{
 static  AuthenticationRepository  get instance=>Get.find();
 
  final _auth=FirebaseAuth.instance;
  late final Rx<User?>firebaseUser;
  var verificationId=''.obs;
  @override
  void onReady(){
    firebaseUser=Rx<User?>(_auth.currentUser);
    firebaseUser.bindStream(_auth.userChanges());
    ever(firebaseUser, _setInitialStream);
  }
   _setInitialStream(User? user){
      user==null? Get.offAll(()=>const  Signuppage()):Get.offAll(()=> const ProfilePage());


    }



    //creating user
    Future<void> createUserwithEmailAndPassword(String email,String password)async{

try{
  await _auth.createUserWithEmailAndPassword(email: email, password: password);
  firebaseUser.value!=null? Get.offAll(()=> NewsPage ()):Get.offAll(()=> HomePage
  
  ());

}on FirebaseException catch(e){
  final ex=SignupEmailPasswordFailure.code(e.code);
print("Firebase authentication ${ex.message}");
throw ex;
}

catch(_){
  final ex= SignupEmailPasswordFailure();
  print("Firebase authentication ${ex.message}");
throw ex;

}
    }


    //phone authentication
 Future <void> phoneAuthentication(String phoneNo)async{
      await _auth.verifyPhoneNumber(
        phoneNumber: phoneNo,
        verificationCompleted: (credential)async{
await _auth.signInWithCredential(credential);
        }, verificationFailed: (e){
          if(e.code=='invalid-phone-number'){
            Get.snackbar('Error','the provider phone number is not valid');
          }else{
            Get.snackbar('Error', "Something went wrong try again");
          }

      }, codeSent: (verificationId, forceResendingToken) => {
        this.verificationId.value=verificationId
      },
       codeAutoRetrievalTimeout: (verificationId) {
             this.verificationId.value=verificationId;
         
       },
       
       );

    }

    //otp verify

    Future <bool> verifyOtp (String otp)async{
     var credials= await _auth.signInWithCredential(PhoneAuthProvider.credential(verificationId: verificationId.value, smsCode: otp));
return credials.user !=null ? true:false;



    }

//login user
        Future<String?> loginwithEmailAndPassword(String email,String password)async{

try{
  await _auth.signInWithEmailAndPassword(email: email, password: password);

}on FirebaseException catch(e){

}

catch(_){

}
    }

    Future<void> logOut() async =>await _auth.signOut();

}