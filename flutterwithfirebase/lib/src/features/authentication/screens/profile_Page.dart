import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutterwithfirebase/src/constants/image_string.dart';
import 'package:flutterwithfirebase/src/features/authentication/controller/profile_controller.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

import '../../../util/theme/listTile_widget.dart';
import 'update_profile.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    
    var isDark = MediaQuery.of(context).platformBrightness == Brightness.dark;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Profile"),
        centerTitle: true,
        leading: IconButton(
            onPressed: () {},
            icon: const Icon(LineAwesomeIcons.angle_left_solid)),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                  size: 40,
                  isDark ? LineAwesomeIcons.sun : LineAwesomeIcons.moon))
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              Center(
                child: Stack(
                  children: [
                    SizedBox(
                      width: 120,
                      height: 120,
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(100),
                          child: const Image(image: AssetImage(profileimage))),
                    ),
                    Positioned(
                      right: 0,
                      bottom: 0,
                     
                      child: Container(
                       
                              width: 40,
                              height: 40,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100),
                                color: Colors.orangeAccent
                          
                              ),
                              child:  Icon(LineAwesomeIcons.edit,
                                size: 20,)),
                    )
                  ],
                ),
              ),
              const Text(
                "User Information ",
                style: TextStyle(fontSize: 20, color: Colors.blueAccent),
              ),
              const SizedBox(height: 10),
              SizedBox(
                width: 300,
                height: 60,
                child: ElevatedButton(
                    onPressed: () {
                Get.to(()=>UpdateProfile());                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.orangeAccent, // Background color
                    ),
                    child: const Text(
                      "Update profile ",
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    )),
              ),
              const SizedBox(height:30),
              const Divider(),
              const SizedBox(height:30),
              listTilewidget(
                
                
                 onPressed: () {  

                 }, title: 'Setting',  icon: LineAwesomeIcons.cog_solid, textColor: Colors.black,  ),
              const SizedBox(height: 10),
               listTilewidget(
                
                
                 onPressed: () {  }, title: 'Manage user',  icon: LineAwesomeIcons.user_check_solid, textColor: Colors.black,  ),
              const SizedBox(height: 10),

               listTilewidget(
                
                
                 onPressed: () {  }, title: 'Information',  icon: LineAwesomeIcons.info_solid, textColor: Colors.black,  ),
          
          const SizedBox(height: 10),
               listTilewidget(
                
                
                 onPressed: () { 
                  print("Billing pressed");
                  }, title: 'Billing Information',  icon: LineAwesomeIcons.wallet_solid, textColor: Colors.black,  ),
       listTilewidget(
                
                
                 onPressed: () {  }, 
                 endIcon: false,
                 title: 'Logout',  icon: Icons.login_outlined, textColor: Colors.red,  ),
         const SizedBox(height: 10),
         
            ],
          ),
        ),
      ),
    );
  }
}

