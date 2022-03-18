import 'package:flutter/material.dart';

import 'package:init_signup/shared/models/header_text.dart';
import 'package:init_signup/shared/shared.dart';

class OtpScreen extends StatelessWidget {
   
  const OtpScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return const  CustomScaffold(
      headerText:  HeaderText(
        primary: 'Número de teléfono', 
        secundary: 'Siguiente: Correo electrónico'
      ) ,
      step: 1,
      content:  Text('Otp Page')
    );
  }
}


// class OtpScreen extends StatelessWidget {
   
//   const OtpScreen({Key? key}) : super(key: key);
  
//   @override
//   Widget build(BuildContext context) {
//     return CustomScaffold(
//       headerText: const HeaderText(
//         primary: 'Número de teléfono', 
//         secundary: 'Siguiente: Correo electrónico'
//       ) ,
//       step: 1,
//       content:  Container(
//         decoration:  const BoxDecoration(
//           color: Color.fromARGB(255, 255, 255, 255),
//           borderRadius: BorderRadius.only(topRight: Radius.circular(32.0), )
//         ),
//         child: Column(
//           children:  [
//             Padding(
//               padding: const EdgeInsets.fromLTRB(24, 33.5, 24, 0),
//               child: RichText(
//                 text: const TextSpan(
//                   style: TextStyle(
//                     height: 1.5,
//                     color:Color.fromRGBO(76, 88, 102, 1),  
//                   ),
//                   children: <TextSpan>[
//                     TextSpan(text: 'Enviamos un código a tu celular '),
//                     TextSpan(
//                       text: '+52 ********17', 
//                       style: TextStyle(
//                         fontWeight: FontWeight.bold,
//                       )
//                     ),
//                     TextSpan(text: ', por favor ingrésalo para continuar.'),
//                   ]
//                 )
//               ), 
//             ), 
//             const  CheckingCode()
//           ],
//         ),
//       ),
//     );
//   }
// }
// class CheckingCode extends StatelessWidget {
   
//   const CheckingCode({Key? key}) : super(key: key);
  
//   @override
//   Widget build(BuildContext context) {
//     double screenWidth = MediaQuery.of(context).size.width;
//     return Container(
//             height: 270,
//             width: 335,
//             margin: const EdgeInsets.fromLTRB(0, 22, 0, 0),
//             padding:  const EdgeInsets.all(22),
//             decoration: const BoxDecoration(
//               color:  Color.fromARGB(255, 255, 255, 255),
//               borderRadius:  BorderRadius.all(Radius.circular(30)),
//               // border: Border.all(
//               //   color:const Color.fromARGB(255, 255, 0, 0)
//               // ),
//               boxShadow:  [
//                 BoxShadow(
//                   color: Color.fromARGB(17, 0, 0, 8),
//                   offset: Offset(
//                     0,
//                     12
//                   ),
//                   blurRadius: 30.0,
//                   spreadRadius: 10,
//                 )
//               ]//BoxShadow
//             ),
           
//             child: Column(
//               children: [
//                   // const OtpTimer(),
//                   Container(
//                     alignment: Alignment.topCenter,
//                     width: screenWidth * 0.55,
//                     margin: const EdgeInsets.all(20),
//                     child: const ClipRRect(
//                       borderRadius: BorderRadius.all(Radius.circular(5)),
//                       child:  LinearProgressIndicator(
//                         minHeight:8,
//                         value: 90/300,
//                         backgroundColor: Color.fromRGBO(223, 227, 231, 1),
//                         valueColor: AlwaysStoppedAnimation<Color>(Color.fromRGBO(255, 191, 14, 1),),
//                       ),
//                     )
//                   ),
//                   Container(
//                     margin: const EdgeInsets.fromLTRB(0, 24, 0, 0),
//                     child: Row(
                    
//                       mainAxisAlignment: MainAxisAlignment.spaceAround,
//                       children: const[
//                         OtpInput( true),
//                         OtpInput( false),
//                         OtpInput( false),
//                         OtpInput( false),
//                       ],
//                     ),
//                   ),

//                   Padding(
//                     padding:  const EdgeInsets.fromLTRB(0, 32, 0, 0),
//                     child: RichText(
//                       text: const TextSpan(
//                         style: TextStyle(
//                           height: 1.5,
//                           color:Color.fromRGBO(76, 88, 102, 1),  
//                         ),
//                         children: <TextSpan>[
//                           TextSpan(text: '¿No lo recibiste? '),
//                           TextSpan(
//                             text: 'Reenviar código', 
//                             style: TextStyle(
//                               fontWeight: FontWeight.bold,
//                             )
//                           ),
//                         ]
//                       )
//                     ),
//                   ),
//               ]
//             )
//     );
//   }
// }



// class OtpInput extends StatelessWidget {

//   // final TextEditingController controller;
//   final bool autoFocus;
//   // const OtpInput(this.controller, this.autoFocus, {Key? key}) : super(key: key);
//   const OtpInput(this.autoFocus, {Key? key}) : super(key: key);
  
  
//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       height: 64,
//       width: 51,
//       child: TextField(
//         autofocus: autoFocus,
//         textAlign: TextAlign.center,
//         keyboardType: TextInputType.number,
//         // controller: controller,
//         maxLength: 1,
//         cursorColor: const Color.fromRGBO(255, 191, 14, 1),
//         decoration:  InputDecoration(
//           border: OutlineInputBorder(
//             borderSide: const BorderSide(
//               color: Color.fromRGBO(41, 70, 95, 0.4),
//             ),
//             borderRadius: BorderRadius.circular(8),
//           ),
//           counterText: '',
//           hintStyle: const TextStyle(color: Colors.black, fontSize: 20.0),
//           focusedBorder:OutlineInputBorder(
//             borderSide: const BorderSide(color: Color.fromRGBO(255, 191, 14, 1), width: 1.0),
//             borderRadius: BorderRadius.circular(8),
//           ),
//         ),
//         onChanged: (value) {
//           if (value.length == 1) {
//             FocusScope.of(context).nextFocus();
//           }
//         },
//       ),
//     );
//   }
// }