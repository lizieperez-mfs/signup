import 'package:flutter/material.dart';
import 'package:init_signup/header/custom_appbar.dart';
import 'package:init_signup/header/custom_scaffold.dart';

class EmailScreen extends StatelessWidget {
   
  const EmailScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return const CustomScaffold(
      content: Text ('Email Screen')
      );
  }
}