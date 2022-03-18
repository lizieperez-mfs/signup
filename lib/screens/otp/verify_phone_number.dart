import 'package:flutter/material.dart';
import 'package:init_signup/screens/otp/widgets/card_cheking.dart';
import 'package:init_signup/shared/models/header_text.dart';

import '../../shared/widgets/header/custom_scaffold.dart';

class VerifyPhoneNumber extends StatelessWidget {
  const VerifyPhoneNumber({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      headerText: HeaderText(
          primary: 'Número de teléfono',
          secundary: 'Siguiente: Correo electrónico'),
      step: 1,
      content: Container(
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 255, 255, 255),
              ),
              child: Padding(
                padding: const EdgeInsets.all(24),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        RichText(
                            text: const TextSpan(
                                style: TextStyle(
                                  height: 1.5,
                                  color: Color.fromRGBO(76, 88, 102, 1),
                                ),
                                children: <TextSpan>[
                              TextSpan(
                                  text: 'Enviamos un código a tu celular '),
                              TextSpan(
                                  text: '+52 ********17',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                  )),
                              TextSpan(
                                  text:
                                      ', por favor ingrésalo para continuar.'),
                            ])),
                        CheckingCode()
                      ],
                    ),
                    Container(
                      width: double.infinity,
                      margin: EdgeInsets.only(top: 30),
                      child: TextButton(
                          onPressed: () {},
                          style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(
                                  const Color(0xff363855)),
                              shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(18.0))),
                              padding: MaterialStateProperty.all<EdgeInsets>(
                                  EdgeInsets.all(15))),
                          child: Text(
                            'Cambiar número de teléfono',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 14.0,
                                fontWeight: FontWeight.w600),
                          )),
                    )
                  ],
                ),
              ),
            )
    );
  }
}
