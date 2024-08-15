import 'package:flutter/material.dart';
import 'package:flutterwithfirebase/src/features/authentication/controller/signupController.dart';
import 'package:flutterwithfirebase/src/repository/authentication_repository.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
class ForgatPasswordScreenPhone extends StatefulWidget {
  const ForgatPasswordScreenPhone({super.key});

  @override
  State<ForgatPasswordScreenPhone> createState() => _ForgatPasswordScreenPhone();
}

class _ForgatPasswordScreenPhone extends State<ForgatPasswordScreenPhone> {
    final Signupcontroller controller = Get.put(Signupcontroller());
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Form(child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
        
          
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text("Ensert your Phone and we will send the code ",style: TextStyle(fontSize:20),),
            ),
        
           TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    
                  ),
                  hintText: "Phone ",
                  label: Text("Enter your Phone"),
                   prefixIcon: Icon(Icons.phone_android),
                ),
                  
              ),
              SizedBox(height: 20),
               SizedBox(
             
              width: double.infinity,
              height: 50,
             
              child: ElevatedButton(onPressed: (){

               

      //                                final phoneNumber = controller.phoneNo.text.trim();
      // AuthenticationRepository.instance.phoneAuthentication(phoneNumber);
              },
              style: ElevatedButton.styleFrom(
          backgroundColor: Colors.orangeAccent, // Background color
        ),
              
               child: const Text("Next",style: TextStyle(color: Colors.white,fontSize: 20),)))
          ],
        
        ),
      )
      
      
      ),
    );
  }
}