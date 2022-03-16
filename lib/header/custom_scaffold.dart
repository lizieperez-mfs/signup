import 'package:flutter/material.dart';
import 'package:init_signup/header/custom_appbar.dart';
import 'package:init_signup/header/header_content.dart';


class CustomScaffold extends StatelessWidget {

  final Widget content;

  const CustomScaffold({
    Key? key, required this.content,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(),
      body: Column(
        children:  [
          const HeaderContent(),
          content
        ]
      ),
    );
  }
}
