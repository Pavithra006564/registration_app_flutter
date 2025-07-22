import 'package:flutter/material.dart';
import 'package:registration_app_flutter/forgotpassword.dart';
import 'package:registration_app_flutter/services.dart';
import 'package:registration_app_flutter/signup.dart';

class Loginpage extends StatefulWidget {
  const Loginpage({super.key});

  @override
  State<Loginpage> createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  @override
  TextEditingController emailcontoller=TextEditingController();
  TextEditingController passwordcontroller=TextEditingController();
  final formkey=GlobalKey<FormState>();
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Form(key: formkey,
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(height: 40),
                Text(
                  "Login",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 20),
                Text(
                  "Login to your account",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey,
                  ),
                ),
                SizedBox(height: 40),
                Align(alignment: Alignment.topLeft, child: Text("Email")),
                TextFormField(controller: emailcontoller,validator: (value) {
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
                SizedBox(height: 30),
                Align(alignment: Alignment.topLeft, child: Text("Password")),
                TextFormField(controller: passwordcontroller,validator: (value) {
                  if(value==null || value.isEmpty){
                    return "password is required";
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
                GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Forgot()),
                        );
                      },
                      child: Align(alignment: Alignment.bottomRight,
                        child: Text(
                          "Forgot Password?",
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
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
                    onPressed: () {if(formkey.currentState!.validate()){
                      loginn(Email: emailcontoller.text, Password: passwordcontroller.text, context: context);
                    }},
                    child: Text("Login"),
                  ),
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Don't have an account?",
                      style: TextStyle(color: Colors.black),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Signuppage()),
                        );
                      },
                      child: Text(
                        "SignUp",
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                     
                  ],
                ),
                SizedBox(height: 10),
                Image(image: AssetImage("assets/login2.jpg")),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
