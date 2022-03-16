import 'package:flutter/material.dart';
import 'package:init_signup/header/custom_scaffold.dart';
import 'package:init_signup/model/header_text.dart';

class EmailScreen extends StatelessWidget {
   
  const EmailScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return const CustomScaffold(
      headerText: HeaderText(
        primary: 'Escribe tu correo Electrónico', 
        secundary: 'Siguiente: contraseña'
      ) ,
      content: Text ('Email Screen'),
      step: 2,
      );
  }
}