import 'package:flutter/material.dart';
import 'package:init_signup/core/core.dart';

class CircleProgress extends StatelessWidget {
  final int step;
  const CircleProgress({Key? key, this.step = 1}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Theme(
        data: SignUpTheme.stepCounter,
        child: Container(
            margin: const EdgeInsets.only(right: 7.0),
            alignment: Alignment.topCenter,
            child: Stack(children: <Widget>[
              SizedBox(
                width: 40,
                height: 40,
                child: Transform.rotate(
                  angle: 320,
                  child: CircularProgressIndicator(value: 1 - (step / 6)),
                ),
              ),
              Positioned(
                left: 8,
                top: 12,
                child: Text(
                  "$step/6",
                ),
              )
            ])));
  }
}
