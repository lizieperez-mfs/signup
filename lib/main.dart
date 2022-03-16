import 'package:flutter/material.dart';
// import 'package:init_signup/header/header.dart';
import 'package:init_signup/home_screen.dart';
import 'package:init_signup/screens/email.dart';
import 'package:init_signup/screens/otp.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: const HomeScreen(),
      routes: {
        'otp': (BuildContext context)=>const OtpScreen(),
        'email': (BuildContext context)=>const EmailScreen()
      },
    );
  }
}


