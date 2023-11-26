import 'package:firstapplication/main.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
        body: Center(
          child: Image.asset("assets/images/grocery_cart.png",
          width: 150,
          height: 150,),
        ),
    );
  }
}
