import 'package:flutter/material.dart';
import 'package:registration_app_flutter/login.dart';

class Signuppage extends StatefulWidget {
  const Signuppage({super.key});

  @override
  State<Signuppage> createState() => _SignuppageState();
}

class _SignuppageState extends State<Signuppage> {
  @override
  TextEditingController usercontroller =TextEditingController();
  TextEditingController emailcontroller =TextEditingController();
  TextEditingController passwordcontroller =TextEditingController();
  TextEditingController confirmcontroller =TextEditingController();
  final formkey=GlobalKey<FormState>();
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Form(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                SizedBox(height: 40),
                Text(
                  "SignUp",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 20),
                Text(
                  "Create an account, It's free",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey,
                  ),
                ),
                SizedBox(height: 50),
                Align(alignment: Alignment.topLeft, child: Text("UserName")),
                TextFormField(controller: usercontroller,validator: (value) {
                  if(value==null || value.isEmpty){
                    return "Username is required";
                  }
                  if(value.length!=8){
                    return "Username must be of 8 characters";
                  }
                },
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                ),
                SizedBox(height: 30),
                Align(alignment: Alignment.topLeft, child: Text("Email")),
                TextFormField(controller: emailcontroller,validator: (value) {
                  if(value==null || value.isEmpty){
                    return "Email is required";
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
                SizedBox(height: 30),
                Align(alignment: Alignment.topLeft, child: Text("Password")),
                TextFormField(controller: passwordcontroller,validator: (value) {
                  if(value==null || value.isEmpty){
                    return "Password is required";
                  }
                  if(value!=8){
                    return "Password must be of 8 characters";
                  }
                },
                  keyboardType: TextInputType.visiblePassword,
                  decoration: InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                ),
                SizedBox(height: 30),
                Align(
                  alignment: Alignment.topLeft,
                  child: Text("Confirm Password"),
                ),
                TextFormField(controller: confirmcontroller,validator: (value) {
                  if(value==null || value.isEmpty){
                    return "Confirm your password";
                  }
                  if(value!=8){
                    return "Password must be of 8 characters";
                  }
                  if(value!=passwordcontroller.text){
                    return "password is not the same"; 
                  }
                },
                  keyboardType: TextInputType.visiblePassword,
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
                    child: Text("Sign Up"),
                  ),
                ),
                SizedBox(height: 10),
        
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Already have an account?",
                      style: TextStyle(color: Colors.black),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Loginpage()),
                        );
                      },
                      child: Text(
                        "Login",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
