import 'package:flutter/material.dart';
import 'package:init_signup/screens/otp/enter_phone_number.dart';
import 'package:init_signup/screens/otp/verify_phone_number.dart';
import 'package:init_signup/screens/screens.dart';


void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: const HomeScreen(),
      // TODO: I put this here, just to try. This would be to refactorized
      routes: {
        'otp': (BuildContext context)=>const VerifyPhoneNumber(),
        'email': (BuildContext context)=>const EmailScreen()
      },
    );
  }
}


