import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {

  static final  Widget questionSVG = SvgPicture.asset('assets/images/question.svg');
  static final  Widget tigoSVG = SvgPicture.asset('assets/images/tigo_appbar.svg');

  const CustomAppBar({
      Key? key,
    }) : super(key: key);


  @override
  Size get preferredSize => const Size.fromHeight(60.0);

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color:const Color.fromRGBO(255, 191, 14, 1),
      child: Padding(
        padding: const EdgeInsets.only(left:10, right: 20),
        child: AppBar(
          backgroundColor: const Color.fromRGBO(255, 191, 14, 1),
          elevation: 0,
          leading: IconButton(
            icon: const Icon(Icons.arrow_back, color: Color.fromRGBO(52, 60, 70, 1),),
            onPressed: () => Navigator.of(context).pop(),
          ), 
    
          centerTitle: true,
          title: Container(
            child: tigoSVG,
            decoration: BoxDecoration(
              border: Border.all(
                width: 0.5,
                color: const Color.fromARGB(255, 255, 255, 255)
              ),
              borderRadius: BorderRadius.circular(5),
            ),
          ), 
          actions: [
            IconButton(
              icon: questionSVG,
              onPressed: () {}
            ) 
          ],
        ),
      ),
    );
  }
}