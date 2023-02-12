import 'package:flutter/material.dart';

class customTextfield extends StatelessWidget {
  customTextfield({required this.controller, required this.hintText});
  TextEditingController? controller;
  final String hintText;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        hintText: hintText,
      ),
    );
  }
}
