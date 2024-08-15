import 'package:flutter/material.dart';
class ForgatPasswordScreen extends StatefulWidget {
  const ForgatPasswordScreen({super.key});

  @override
  State<ForgatPasswordScreen> createState() => _ForgatPasswordScreenState();
}

class _ForgatPasswordScreenState extends State<ForgatPasswordScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Form(child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
        
          
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text("Ensert your Email and we will send the code ",style: TextStyle(fontSize:20),),
            ),
        
           TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    
                  ),
                  hintText: "Email ",
                  label: Text("Enter your email"),
                   prefixIcon: Icon(Icons.email),
                ),
                  
              ),
              SizedBox(height: 20),
               SizedBox(
             
              width: double.infinity,
              height: 50,
             
              child: ElevatedButton(onPressed: (){},
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