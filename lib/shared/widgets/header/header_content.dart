import 'package:flutter/material.dart';
import 'package:init_signup/shared/models/header_text.dart';
import 'package:init_signup/shared/widgets/header/circle_progress.dart';

class HeaderContent extends StatelessWidget {
   
  final int step;
  final HeaderText headerText;

  const HeaderContent({
    Key? key, 
    this.step=1, 
    required this.headerText
  }) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height:113.61,
      child: Row(
        children: [
          Expanded(
            child: ClipPath(
              clipper: HeaderCustomClipper(),
              child: Container(
                color: const Color.fromRGBO(255, 191, 14, 1),
                child: Padding(
                padding: const EdgeInsets.only(top:15.31),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 44, top: 2),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(headerText.primary,
                            style: const TextStyle(
                              color:Color.fromRGBO(52, 60, 70, 1),
                              fontWeight: FontWeight.bold,
                              fontSize: 16),
            
                          ),
                          Text(headerText.secundary,
                            style: const TextStyle(
                              fontSize:12, 
                              color:Color.fromRGBO(76, 88, 102, 1),
                              height: 1.5 
                            ),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const  EdgeInsets.fromLTRB(0, 0, 15, 0),
                      child: CircleProgress(step:step)
                      )
                    ]
                  ),
                ),
              )
            )
          )
        ]
      ),
    );  
  } 
}


class HeaderCustomClipper extends CustomClipper<Path> {

  @override
  Path getClip(Size size) {
    var path = Path();
    var cwidth =33.31;

    path.lineTo(0.0, size.height - (cwidth*2));

    final firstControlPoint = Offset(0.0, size.height - cwidth);
    final firstEndPoint = Offset(cwidth, size.height - cwidth);
    path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy,
        firstEndPoint.dx, firstEndPoint.dy);

    path.lineTo(size.width-cwidth, size.height - cwidth);

    final secondControlPoint = Offset(size.width, size.height - cwidth);
    final secondEndPoint = Offset(size.width, size.height);

    path.quadraticBezierTo(secondControlPoint.dx, secondControlPoint.dy,
        secondEndPoint.dx, secondEndPoint.dy);

    path.lineTo(size.width, 0.0);
    path.lineTo(0.0, 0.0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}

