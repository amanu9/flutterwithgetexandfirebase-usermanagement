import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutterwithfirebase/firebase_options.dart';
import 'package:flutterwithfirebase/src/features/authentication/screens/forgatpassword_phone.dart';
import 'package:flutterwithfirebase/src/features/authentication/screens/newpage.dart';
import 'package:flutterwithfirebase/src/features/authentication/screens/profile_Page.dart';
import 'package:flutterwithfirebase/src/features/home.dart';
import 'package:flutterwithfirebase/src/features/post.dart';
import 'package:flutterwithfirebase/src/repository/authentication_repository.dart';
import 'package:flutterwithfirebase/src/util/theme/theme.dart';
import 'package:flutterwithfirebase/src/util/theme/widget_text/text_theme.dart';
import 'package:get/get.dart';

import 'src/features/authentication/screens/login.dart';
import 'src/features/authentication/screens/otpscreen.dart';
import 'src/features/authentication/screens/signuppage.dart';
import 'src/repository/user_repository.dart';


void main() async{
  WidgetsFlutterBinding.ensureInitialized();
 await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform)
  .then((value)=>
  
  Get.put(AuthenticationRepository()));
  Get.put(UserRepository());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: TAppTheme.lightTheme,
      darkTheme: TAppTheme.darktheme,
      themeMode: ThemeMode.system,
     // transitionDuration: const Duration(milliseconds: 600),
    
    
      home:  const ProfilePage(),
    );
  }
}

// import 'package:firebase_core/firebase_core.dart';
// import 'package:flutter/material.dart';
// import 'package:flutterwithfirebase/firebase_options.dart';
// import 'package:flutterwithfirebase/src/features/authentication/screens/signuppage.dart';
// import 'package:flutterwithfirebase/src/repository/authentication_repository.dart';
// import 'package:flutterwithfirebase/src/repository/user_repository.dart';
// import 'package:flutterwithfirebase/src/util/theme/theme.dart';
// import 'package:get/get.dart';

// void main() async {
//   WidgetsFlutterBinding.ensureInitialized();

//   // Initialize Firebase
//   await Firebase.initializeApp(
//     options: DefaultFirebaseOptions.currentPlatform,
//   );

//   // Initialize repositories after Firebase is initialized
//   Get.put(UserRepository());
//   Get.put(AuthenticationRepository());

//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return GetMaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: 'Flutter Demo',
//       theme: TAppTheme.lightTheme,
//       darkTheme: TAppTheme.darktheme,
//       themeMode: ThemeMode.system,
//       transitionDuration: const Duration(milliseconds: 600),
//       home: const Signuppage(),
//     );
//   }
// }
