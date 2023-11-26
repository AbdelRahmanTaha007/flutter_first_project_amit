import 'package:firstapplication/screens/Splach_screen.dart';
import 'package:firstapplication/screens/login_screen.dart';
import 'package:firstapplication/screens/register_screen.dart';
import 'package:firstapplication/screens/verification_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      
      home: SplashScreen(),
    );
  }
}
