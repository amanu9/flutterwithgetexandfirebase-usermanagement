
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:flutterwithfirebase/src/features/authentication/screens/forgat_password_screen.dart';
import 'package:flutterwithfirebase/src/features/authentication/screens/forgatpassword_phone.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(child: Text("Login Page",style: TextStyle(fontSize: 20))),
                  SizedBox(height: 60),
                
          Form(
                child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextFormField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  
                ),
                hintText: "user Name",
                label: const Text("Enter your username"),
                 prefixIcon: const Icon(Icons.person),
              ),
                
            ),
            const SizedBox(height: 30),
            TextFormField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  
                ),
                prefixIcon: const Icon(Icons.lock),
                hintText: "Password",
                label: Text("Enter your password")
              ),
                
            ),
            const SizedBox(height: 40),
            SizedBox(
             
              width: double.infinity,
              height: 50,
             
              child: ElevatedButton(onPressed: (){},
              style: ElevatedButton.styleFrom(
          backgroundColor: Colors.orangeAccent, // Background color
        ),
              
               child: const Text("Login",style: TextStyle(color: Colors.white,fontSize: 20),)))





          ],
                
          )),
           SizedBox(height: 20,),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextButton(onPressed: (){
            
            }, child: Text("no account? create",style: TextStyle(color:Colors.black),)),
              Align(
                alignment: Alignment.centerRight,
                child: TextButton(onPressed: (){
                showModalBottomSheet(context: context, builder: (context)=>Container(
                
                  padding: EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Make selection to verify your account",style: TextStyle(fontSize: 20,color: Colors.black),),
                      SizedBox(height: 20),
                      GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>ForgatPasswordScreen()));

                        },
                        child: Container(
                          padding: EdgeInsets.all(20),
                          decoration: BoxDecoration(
                         borderRadius: BorderRadius.circular(15),
                         color: Colors.white
                         
                        
                          ),
                          child: Row(
                            children: [
                              Icon(Icons.mail_lock_outlined,size: 50,color: Colors.red,),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Email",style:TextStyle(fontSize: 20))
                        
                                ],
                              )
                            ],
                        
                          ),
                        ),
                      ),
                      SizedBox(height: 20),
                       GestureDetector(
                        onTap: (){

                          Navigator.push(context, MaterialPageRoute(builder: (context)=>ForgatPasswordScreenPhone()));
                        },
                        child: Container(
                          padding: EdgeInsets.all(20),
                          decoration: BoxDecoration(
                         borderRadius: BorderRadius.circular(15),
                         color: Colors.white
                         
                        
                          ),
                          child: Row(
                            children: [
                              Icon(Icons.phone_android,size: 50,color: Colors.blue,),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Phone",style:TextStyle(fontSize: 20))
                        
                                ],
                              )
                            ],
                        
                          ),
                        ),
                      )
                    ],
                
                
                  ),
                
                ));
                            
                            }, child: Text("Forgot password",style: TextStyle(color:Colors.red),)),
              ),
            ]
          ),
         

       
                
                ],
                
          ),
        ),
      ),
    );
  }
}