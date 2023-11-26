import 'package:firstapplication/main.dart';
import 'package:flutter/material.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.white,
      elevation: 0.0,
      leading: Icon(Icons.arrow_back,color: Colors.black,
      )),
      body: SafeArea(
        child:
         Column(
          children: [



            Container(

              margin: EdgeInsets.only(top: 50,bottom: 20,left: 15,right: 15),
              child:Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Sign up",
                  style: TextStyle(fontWeight: FontWeight.bold,
                  fontSize: 24),
                  ),
                  Text("Please Enter your information below to sign up",
                  style: TextStyle(fontSize: 16),)
                ],
              ) ,

            ),
            Container(
              margin: EdgeInsets.only(bottom: 20),
              child: Image.asset("assets/images/grocery_cart.png",
              width: 90,height: 80,),
            ),
            Container(
              margin: EdgeInsets.only(left: 15,right: 15,bottom: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Name",
                  style: TextStyle(fontSize: 14),),
                  TextField(
                     keyboardType: TextInputType.name,
                        decoration: InputDecoration(
                          hintText: "Please enter your name",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15)),
                        ),
                  )
                ],
              ),
            ),
            Container(
                margin: EdgeInsets.only(left: 15,right: 15,bottom: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Email",
                  style: TextStyle(fontSize: 14),),
                  TextField(
                     keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          hintText: "Please enter your email",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15)),
                        ),
                  )
                ],
              ),
            ),        
            Container(
              margin: EdgeInsets.only(left: 15,right: 15,bottom: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Password",
                  style: TextStyle(fontSize: 14),),
                  TextField(
                     keyboardType: TextInputType.visiblePassword,
                        decoration: InputDecoration(
                          hintText: "Please enter your password",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15)),
                        ),
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 25,right: 25,bottom: 20),
              child: Row(
                children:[
                  Expanded(
                  child: ElevatedButton(onPressed: (){}, child: Text("Sign up",style: TextStyle(fontSize: 18),),
                  style:ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.purple)))),

                ] ),),
            Container(
              
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text("Already have an account?",style: TextStyle(fontSize: 18)),
                Text("signin",style: TextStyle(color: Colors.purple,
                fontSize: 18),)
              ],
            ),)
          
          
          
          
          ],
         )),
    );
  }
}