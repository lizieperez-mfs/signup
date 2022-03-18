import 'package:flutter/material.dart';

import 'package:init_signup/shared/models/header_text.dart';
import 'package:init_signup/shared/shared.dart';
import 'package:init_signup/core/core.dart';

class OtpScreen extends StatelessWidget {
  const OtpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Theme(
        data: SignUpTheme.appBarTheme,
        child: const CustomScaffold(
          headerText: HeaderText(
              primary: 'Número de teléfono',
              secundary: 'Siguiente: Correo electrónico'),
          step: 1,
          content: Text('Otp Page'),
        ));
  }
}
