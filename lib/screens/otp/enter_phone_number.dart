import 'package:flutter/material.dart';
import 'package:init_signup/shared/models/header_text.dart';
import 'package:init_signup/shared/widgets/header/custom_scaffold.dart';

class EnterPhoneNumber extends StatelessWidget {
  const EnterPhoneNumber({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      headerText: HeaderText(
          primary: 'Número de teléfono',
          secundary: 'Siguiente: Correo electrónico'
      ) ,
      step: 1,
      content : Expanded(
        child: Padding(
          padding: const EdgeInsets.all(14),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('Ingresa tu número de celular.',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      )),
                  Row(
                    children: [
                      Expanded(
                        child: TextField(
                          keyboardType: TextInputType.number,
                        ),
                      ),
                      Expanded(
                        child: TextField(),
                      )
                    ],
                  ),
                ],
              ),
              Container(
                width: double.infinity,
                child: TextButton(
                    onPressed: () {},
                    style: ButtonStyle(
                        backgroundColor:
                        MaterialStateProperty.all(const Color(0xff363855)),
                        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18.0))),
                        padding: MaterialStateProperty.all<EdgeInsets>(
                            EdgeInsets.all(15))),
                    child: Text(
                      'Continuar',
                      style: TextStyle(color: Colors.white, fontSize: 14.0),
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}