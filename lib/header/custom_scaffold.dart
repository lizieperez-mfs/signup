import 'package:flutter/material.dart';
import 'package:init_signup/header/custom_appbar.dart';
import 'package:init_signup/header/header_content.dart';
import 'package:init_signup/model/header_text.dart';


class CustomScaffold extends StatelessWidget {

  final HeaderText headerText;
  final Widget content;
  final int step;

  const CustomScaffold({
    Key? key, 
    required this.content, 
    this.step=1, 
    required this.headerText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(),
      body: Column(
        children:  [
          HeaderContent(
            headerText: headerText,
            step:step, 
          ),
          content
        ]
      ),
    );
  }
}
