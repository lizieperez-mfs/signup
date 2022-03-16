import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
   
  const HomeScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children:  <Widget>[
          Card(
            child: ListTile(
              title: const Text('OTP'),
              onTap: () {
                Navigator.pushNamed(context, 'otp');
              },
            )
          ),
          Card(
            child: ListTile(
              title: const Text('Email'),
              onTap: () {
                Navigator.pushNamed(context, 'email');
              },
            ),
          ),
        ]
      ),
    );
  }
}