import 'package:flutter/material.dart';
import 'package:init_signup/header/custom_scaffold.dart';
import 'package:init_signup/model/header_text.dart';

class OtpScreen extends StatelessWidget {
   
  const OtpScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return const CustomScaffold(
      headerText: HeaderText(
        primary: 'Número de teléfono', 
        secundary: 'Siguiente: Correo electrónico'
      ) ,
      step: 1,
      content: Text('Otp Page'),
    );
  }
}