import 'package:flutter/material.dart';
import 'package:flutter_countdown_timer/index.dart';
class CountDownTimerOPT extends StatelessWidget {

  CountdownTimerController controller;
  Duration maxTime;
  CountDownTimerOPT({Key? key, required this.maxTime, required this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return CountdownTimer(
      controller: controller,
      widgetBuilder: (_, CurrentRemainingTime? time) {
        final maxTimeInSec = maxTime.inSeconds;
        final min = time?.min ?? 0;
        final sec = time?.sec ?? 0;
        final remeningTime = min * 60 + sec;

        return Column(
          children: [
            RichText(
                text: TextSpan(
                    style: const TextStyle(
                        height: 1.5,
                        color: Color.fromRGBO(76, 88, 102, 1),
                        fontSize: 14),
                    children: <TextSpan> [
                      const TextSpan(text: 'Tu código es válido por '),
                      TextSpan(
                          text: "$min:$sec minutos" ,
                          style: const TextStyle(
                            fontWeight: FontWeight.w700,
                          )),
                    ]
                )
            ),
            Container(
                alignment: Alignment.topCenter,
                width: screenWidth * 0.55,
                margin: const EdgeInsets.all(20),
                child:  ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                  child: LinearProgressIndicator(
                    minHeight: 8,
                    value: remeningTime / maxTimeInSec,
                    backgroundColor: Color.fromRGBO(223, 227, 231, 1),
                    valueColor: AlwaysStoppedAnimation<Color>(
                      Color.fromRGBO(255, 191, 14, 1),
                    ),
                  ),
                )),
          ],
        );
      }
    );
  }
}
