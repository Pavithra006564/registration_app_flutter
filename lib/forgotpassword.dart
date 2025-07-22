import 'package:flutter/material.dart';

class Forgot extends StatelessWidget {


  @override
  TextEditingController emailcontroller=TextEditingController();
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body:Center(
        child:Column(
          children: [
            SizedBox(height: 100,),
            Text("Forgot Password?",style: TextStyle(color: Colors.black,fontSize:40,fontWeight:  FontWeight.bold),),
             SizedBox(height: 80),
                Align(alignment: Alignment.topLeft, child: Text("Email")),
                TextFormField(controller: emailcontroller,validator: (value) {
                  if(value == null || value.isEmpty){
                    return "email is required";
                  }
                  if(!value.contains("@")){
                    return "@ is required";
                  }
                },
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                ),
                 SizedBox(height: 40),
                SizedBox(
                  height: 50,
                  width: 300,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      foregroundColor: Colors.white,
                      side: BorderSide(color: Colors.black),
                    ),
                    onPressed: () {},
                    child: Text("Send Link"),
                  ),
                ),
          ],
        ) ,
      ),
    );
  }
}