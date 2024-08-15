// using Future rather steam real time data
// import 'package:flutter/material.dart';
// import 'package:flutterwithfirebase/src/features/authentication/controller/profile_controller.dart';
// import 'package:flutterwithfirebase/src/features/authentication/modals/usermodel.dart';
// import 'package:flutterwithfirebase/src/features/authentication/screens/signuppage.dart';
// import 'package:get/get.dart';
// import 'package:line_awesome_flutter/line_awesome_flutter.dart';

// class UpdateProfile extends StatelessWidget {
//   UpdateProfile({super.key});

//   @override
//   Widget build(BuildContext context) {
//     final amanController = Get.put(ProfileController());

//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Update profile"),
//         centerTitle: true,
//         leading: IconButton(
//           onPressed: () {
//             Get.back();
//           },
//           icon: const Icon(LineAwesomeIcons.angle_left_solid),
//         ),
//         actions: [
//           IconButton(onPressed: (){
            
//           }, 
//           icon: const Icon(Icons.edit, size: 30,
//           color: Colors.blue,)
//           )
//         ],
//       ),
//       body: Container(
//         padding: const EdgeInsets.all(20),
//         child: FutureBuilder<List<Usermodel>>(
//           // Fetch all users
//           future: amanController.getAllUsers(),
//           builder: (context, amansnapshot) {
//             if (amansnapshot.connectionState == ConnectionState.done) {
//               if (amansnapshot.hasData) {
               
//                 return ListView.builder(
//                   shrinkWrap: true,
//                   itemCount: amansnapshot.data!.length,
//                   itemBuilder: (context, index) {
//                     return Column(
//                       children: [
//                         Container(
//                           decoration: BoxDecoration(
//                             color: Colors.amberAccent.withOpacity(0.2)
//                           ),
//                           child: ListTile(
//                             iconColor: Colors.blue,
//                             leading: Icon(Icons.person,size: 30,),
//                             title: Text("Name: ${amansnapshot.data![index].name}",style: TextStyle(fontSize: 14),),
//                             subtitle: Column(
//                               crossAxisAlignment: CrossAxisAlignment.start,
//                               children: [
//                                 Text(
//                                     "Phoen : ${amansnapshot.data![index].phonenumber}"),
                                 
//                                 Text("Email: ${amansnapshot.data![index].email}")
//                               ],
//                             ),
//                           ),
//                         ),
//                        const SizedBox(height: 20),
//                       ],
//                     );
//                   },
//                 );
//               } else if (amansnapshot.hasError) {
//                 return Center(
//                   child: Text('Error: ${amansnapshot.error.toString()}'),
//                 );
//               } else {
//                 return Center(
//                   child: Text("No data found"),
//                 );
//               }
//             } else {
//               return Center(child: CircularProgressIndicator());
//             }
//           },
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:flutterwithfirebase/src/features/authentication/controller/profile_controller.dart';
import 'package:flutterwithfirebase/src/features/authentication/modals/usermodel.dart';
import 'package:flutterwithfirebase/src/features/authentication/screens/signuppage.dart';
import 'package:get/get.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

class UpdateProfile extends StatelessWidget {
  UpdateProfile({super.key});

  @override
  Widget build(BuildContext context) {
    final amanController = Get.put(ProfileController());

    return Scaffold(
      appBar: AppBar(
        title: Text("Update profile"),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: const Icon(LineAwesomeIcons.angle_left_solid),
        ),
        actions: [
          IconButton(
            onPressed: () {
             // Get.to(SignupPage());
            },
            icon: const Icon(
              Icons.edit,
              size: 30,
              color: Colors.blue,
            ),
          ),
        ],
      ),
      body: Container(
        padding: const EdgeInsets.all(20),
        child: StreamBuilder<List<Usermodel>>(
          // Fetch all users in real-time
          stream: amanController.getAllUsersStream(),
          builder: (context, amansnapshot) {
            if (amansnapshot.connectionState == ConnectionState.active) {
              if (amansnapshot.hasData) {
                return ListView.builder(
                  itemCount: amansnapshot.data!.length,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.amberAccent.withOpacity(0.2),
                          ),
                          child: ListTile(
                            iconColor: Colors.blue,
                            leading: const Icon(
                              Icons.person,
                              size: 30,
                            ),
                            title: Text(
                              "Name: ${amansnapshot.data![index].name}",
                              style: TextStyle(fontSize: 14),
                            ),
                            subtitle: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Phone: ${amansnapshot.data![index].phonenumber}",
                                ),
                                Text("Email: ${amansnapshot.data![index].email}"),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(height: 20),
                      ],
                    );
                  },
                );
              } else if (amansnapshot.hasError) {
                return Center(
                  child: Text('Error: ${amansnapshot.error.toString()}'),
                );
              } else {
                return Center(
                  child: Text("No data found"),
                );
              }
            } else {
              return Center(child: CircularProgressIndicator());
            }
          },
        ),
      ),
    );
  }
}

