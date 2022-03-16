import 'package:flutter/material.dart';

class CircleProgress extends StatelessWidget {
   
  final int step;
  const CircleProgress({Key? key, this.step=1}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return  Container(
      margin: const EdgeInsets.only(right: 7.0),
      alignment: Alignment.topCenter,
      child: Stack(
        children: <Widget>[
          SizedBox(
            width: 40,
            height: 40,
            child: Transform.rotate(
              angle: 320,
              child: CircularProgressIndicator(
                backgroundColor:const Color.fromARGB(255, 60, 70, 1),
                valueColor: const AlwaysStoppedAnimation<Color>( Colors.white),
                value:1-(step/6)
              ),
            ),
          ),
          
          Positioned(
            left: 8,
            top: 12,
            child: Text(
              "$step/6",
              style:const TextStyle(
                color: Color.fromARGB(255, 60, 70, 1),
                fontWeight: FontWeight.bold),
            ),
          )
        ]
      )
    );
  }
}