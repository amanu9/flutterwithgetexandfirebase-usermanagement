// import "package:flutter/material.dart";
// import "package:flutter_otp_text_field/flutter_otp_text_field.dart";
// import "package:flutterwithfirebase/src/features/authentication/controller/otp_controller.dart";

// class OtpScreen extends StatefulWidget {
//   const OtpScreen({super.key});

//   @override
//   State<OtpScreen> createState() => _OtpScreenState();
// }

// class _OtpScreenState extends State<OtpScreen> {

//   @override
//   Widget build(BuildContext context) {
//     var otp;
//     return  SafeArea(
//       child: Scaffold(
//         body: Center(
         
//           child: Padding(
//             padding: const EdgeInsets.only(top: 20.0),
//             child: Column(
            
              
//               children: [
                
//                 const Padding(padding: EdgeInsets.all(40)
                
                
                
//                 ),
//                  const Padding(
//                    padding: EdgeInsets.all(20.0),
//                    child: Expanded(child: Text("Insert the number and we will send you and verify it",style:TextStyle(fontSize: 20,color: Colors.red))),
//                  ),
//                    OtpTextField(
//                     numberOfFields: 6,
//                     fillColor: Colors.blueAccent.withOpacity(0.2),
                   
//                     filled: true,
//                     onSubmit: (code){
//                     otp=(code);
//                     OtpController.instance.verifyOtp(otp);
//                     },
//                   ),
//                   const SizedBox(height: 50),
            
            
//                   Padding(
//                     padding: const EdgeInsets.all(8.0),
//                     child: SizedBox(
//                       width: double.infinity,
//                       height: 50,
//                       child: ElevatedButton(
//                         onPressed: (){
//                           OtpController.instance.verifyOtp(otp);
//                         },
//                       child:  Text("Next",style: TextStyle(fontSize: 30,color: Colors.white),
                      
                      
//                       ),
//                       style: ElevatedButton.styleFrom(
                        
//                          backgroundColor: Colors.orangeAccent,
//                       )
                      
//                       ),
//                     ),
//                   )
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:flutterwithfirebase/src/features/authentication/controller/otp_controller.dart';
import 'package:get/get.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({super.key});

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {

  @override
  void initState() {
    super.initState();
    Get.put(OtpController()); // Initialize OtpController immediately
  }

  @override
  Widget build(BuildContext context) {
   
    var otp;
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Padding(
            padding: const EdgeInsets.only(top: 20.0),
            child: Column(
              children: [
                const Padding(padding: EdgeInsets.all(40)),
                const Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Text(
                    "Insert the code sent to your phone",
                    style: TextStyle(fontSize: 20, color: Colors.red),
                  ),
                ),
                OtpTextField(
                  numberOfFields: 6,
                  fillColor: Colors.blueAccent.withOpacity(0.2),
                  filled: true,
                  onSubmit: (code) {
                    otp = code;
                    OtpController.instance.verifyOtp(otp);
                  },
                ),
                const SizedBox(height: 50),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    width: double.infinity,
                    height: 50,
                    child: ElevatedButton(
                      onPressed: () {
                        OtpController.instance.verifyOtp(otp);
                      },
                      child: const Text(
                        "Next",
                        style: TextStyle(fontSize: 30, color: Colors.white),
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orangeAccent,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
