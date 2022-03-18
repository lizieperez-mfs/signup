import 'package:flutter/material.dart';
import 'package:flutter_countdown_timer/countdown_timer_controller.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:init_signup/screens/otp/widgets/count_down_timer.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/otp_field_style.dart';
import 'package:otp_text_field/style.dart';

class CheckingCode extends StatefulWidget {
  const CheckingCode({Key? key}) : super(key: key);

  @override
  State<CheckingCode> createState() => _CheckingCodeState();
}

class _CheckingCodeState extends State<CheckingCode> {

  late CountdownTimerController controller;
  OtpFieldController otpController = OtpFieldController();

  int startTime = DateTime.now().millisecondsSinceEpoch;
  int endTime = DateTime.now().millisecondsSinceEpoch +
      Duration(minutes: 5).inMilliseconds;

  void initState() {
    super.initState();
    controller = CountdownTimerController(endTime: endTime, onEnd: onEnd);
  }

  void onEnd() {
    print('onEnd');
  }

  Widget _showMessageError() {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16), color: Color(0xffFAEDEA)),
      padding: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          SvgPicture.asset(
            'assets/images/exclamation-circle-solid.svg',
            semanticsLabel: 'exclamation-circle-solid',
            color: Colors.redAccent,
            width: 20,
            height: 20,
          ),
          Text(
            'El código ingresado es incorrecto',
            style: TextStyle(fontSize: 14, color: Color(0xff4C5866)),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    print(screenWidth);
    return Container(
        constraints: BoxConstraints(minWidth: 100, maxWidth: 311),
        margin: const EdgeInsets.fromLTRB(0, 22, 0, 0),
        padding: const EdgeInsets.symmetric(vertical: 28, horizontal: 20),
        decoration: const BoxDecoration(
            color: Color.fromARGB(255, 255, 255, 255),
            borderRadius: BorderRadius.all(Radius.circular(30)),
            boxShadow: [
              BoxShadow(
                color: Color.fromARGB(17, 0, 0, 8),
                offset: Offset(0, 12),
                blurRadius: 30.0,
                spreadRadius: 10,
              )
            ] //BoxShadow
            ),
        child: Column(children: [
          CountDownTimerOPT(
            maxTime: Duration(minutes: 5),
            controller: controller,
          ),
          Container(
            margin: const EdgeInsets.only(top: 18,bottom: 22),
            child: OTPTextField(
                controller: otpController,
                otpFieldStyle: OtpFieldStyle(
                  focusBorderColor: Color(0xffFABE00),

                ),
                length: 4,
                width: MediaQuery.of(context).size.width,
                textFieldAlignment: MainAxisAlignment.spaceAround,
                fieldWidth: 55,
                fieldStyle: FieldStyle.box,
                outlineBorderRadius: 15,
                style: TextStyle(fontSize: 23),
                onChanged: (pin) {
                  print("Changed: " + pin);
                },
                onCompleted: (pin) {
                  print("Completed: " + pin);
                })
          ),
          _showMessageError(),
          Padding(
            padding: const EdgeInsets.only(top: 24),
            child: RichText(
                text: const TextSpan(
                    style: TextStyle(
                      height: 1.5,
                      color: Color.fromRGBO(76, 88, 102, 1),
                    ),
                    children: <TextSpan>[
                  TextSpan(text: '¿No lo recibiste? '),
                  TextSpan(
                      text: 'Reenviar código',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      )),
                ])),
          ),
        ]));
  }
}
