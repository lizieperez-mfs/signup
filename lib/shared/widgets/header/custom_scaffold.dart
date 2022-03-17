import 'package:flutter/material.dart';


import 'package:init_signup/shared/models/header_text.dart';
import 'package:init_signup/shared/widgets/header/custom_appbar.dart';
import 'package:init_signup/shared/widgets/header/header_content.dart';


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
