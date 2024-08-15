import 'package:flutter/material.dart';
import 'package:flutterwithfirebase/src/features/authentication/controller/signupController.dart';
import 'package:flutterwithfirebase/src/features/authentication/modals/usermodel.dart';
import 'package:flutterwithfirebase/src/features/authentication/screens/otpscreen.dart';
import 'package:flutterwithfirebase/src/features/post.dart';
import 'package:flutterwithfirebase/src/repository/authentication_repository.dart';
import 'package:flutterwithfirebase/src/repository/authentication_repository.dart';
import 'package:flutterwithfirebase/src/repository/authentication_repository.dart';
import 'package:flutterwithfirebase/src/repository/user_repository.dart';
import 'package:get/get.dart';

import '../controller/signupController.dart';

class Signuppage extends StatefulWidget {
  const Signuppage({super.key});

  @override
  State<Signuppage> createState() => _SignuppageState();
}

class _SignuppageState extends State<Signuppage> {
  final Signupcontroller controller = Get.put(Signupcontroller());
  

  @override
  Widget build(BuildContext context) {
    final _formkey=GlobalKey<FormState>();
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Center(child: Text("Sign up Page", style: TextStyle(fontSize: 20))),
              const SizedBox(height: 60),
              Form(
                key: _formkey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextFormField(
                      controller: controller.name,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        hintText: "First Name",
                        label: const Text("Enter your first name"),
                        prefixIcon: const Icon(Icons.person),
                      ),
                    ),
                    const SizedBox(height: 30),
                   
                    // ),
                    const SizedBox(height: 30),
                    TextFormField(
                      controller: controller.email,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        hintText: "Email",
                        label: const Text("Enter your email"),
                        prefixIcon: const Icon(Icons.email),
                      ),
                    ),
                    const SizedBox(height: 30),
                    TextFormField(
                      controller: controller.password,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        prefixIcon: const Icon(Icons.lock),
                        hintText: "Password",
                        label: const Text("Enter your password"),
                      ),
                    ),
                    SizedBox(height:30,),
                     TextFormField(
                      controller: controller.phoneNo,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        prefixIcon: const Icon(Icons.lock),
                        hintText: "phone",
                        label: const Text("Enter your phone"),
                      ),
                    ),
                    const SizedBox(height: 40),
                    SizedBox(
                      width: double.infinity,
                      height: 50,
                      child: ElevatedButton(
                        onPressed: () {
                          if(_formkey.currentState!.validate()){
                          //     final email = controller.email.text;
                          // final password = controller.password.text;
                          // controller.registerUser(email, password);
          // adding user to database part
                          final user=Usermodel(email: controller.email.text.trim(), password: controller.password.text.trim(), name: controller.name.text.trim(), phonenumber: controller.phoneNo.text.trim());
                
           Signupcontroller.instance.creatUser(user);
          
              
                // otp verification part 
                //                   final phoneNumber = controller.phoneNo.text.trim();
               //  AuthenticationRepository.instance.phoneAuthentication(phoneNumber);
                // Get.to(OtpScreen());
          
                         
          
                          }
                        
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orangeAccent, // Background color
                        ),
                        child: const Text(
                          "Sign Up",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
