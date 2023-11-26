import 'package:firstapplication/main.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool rememberMe = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
            // mainAxisAlignment: MainAxisAlignment.start,
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                
                margin: EdgeInsets.only(top: 30, left: 1,bottom: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Welcome Back!",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    Text(
                      "Login to your existing account",
                      style: TextStyle(fontSize: 18),
                    ),
                  ],
                ),
              ),
              Center(
                child: Container(
                  margin: EdgeInsets.only(bottom: 15),
                  child: Image.asset(
                    "assets/images/grocery_cart.png",
                    width: 80,
                    height: 80,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 15, right: 15, bottom: 20),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Email Address",
                        style: TextStyle(
                          fontSize: 14,
                        ),
                      ),
                      TextField(
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          hintText: "e.g name@example.com",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15)),
                        ),
                      ),
                    ]),
              ),
              Container(
                margin: EdgeInsets.only(left: 15, right: 15, bottom: 25),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Password",
                        style: TextStyle(
                          fontSize: 14,
                        ),
                      ),
                      TextField(
                        keyboardType: TextInputType.visiblePassword,
                        decoration: InputDecoration(
                          hintText: "e.g *************",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15)),
                        ),
                      ),
                    ]),
              ),
              Container(
              margin: EdgeInsets.only(left: 5,right: 5,bottom: 30),
              child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              SizedBox(width: 10.0),
              Checkbox(
                value: rememberMe,
                onChanged: (bool? value) {
                  setState(() {
                    rememberMe = value ?? false;
                  });
                },
              ),Text(
                'Remember me',
                style: TextStyle(fontSize: 18.0),
              ),
            ],
          ),
          TextButton(
            onPressed: () {
              
              
            },
            child: Text(
              'Forgot your Password?',
              style: TextStyle(fontSize: 16.0, color: Colors.blue),
            ),
          ),
        ],
      ),
            ),
              Container(
                margin: EdgeInsets.only(left: 25,right: 25,),
                
                child: Row(
                  children:[ Expanded(
                    child: ElevatedButton(onPressed: (){
                  
                    }, child: Text("Login"),style:ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.purple)),),
                  ),
            ]),
              ),
              Container(
                margin: EdgeInsets.only(top: 20,left: 45,right: 45),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.asset("assets/images/facebook.png",
                    width: 50,
                    height: 50,
                    ),
                    Image.asset("assets/images/social.png",
                    width: 50,
                    height: 50)

                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 100),
                
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    
                  Text("Don't have an account?",style: TextStyle(fontSize: 14),),
                  Text("Signup",style: TextStyle(fontSize: 14,color: Colors.purple),
                    )
                ]),
              )
            ]
            ),
      ),
    );
  }
}
