import 'package:flutter/material.dart';
import 'package:init_signup/shared/models/header_text.dart';

import 'package:init_signup/shared/shared.dart';
import 'package:init_signup/core/core.dart';

class EmailScreen extends StatelessWidget {
  const EmailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Theme(
        data: SignUpTheme.appBarTheme,
        child: const CustomScaffold(
          headerText: HeaderText(
              primary: 'Escribe tu correo Electrónico',
              secundary: 'Siguiente: contraseña'),
          content: Text('Email Screen'),
          step: 2,
        ));
  }
}
