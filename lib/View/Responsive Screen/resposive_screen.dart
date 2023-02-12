import 'package:flutter/material.dart';

class responsive extends StatelessWidget {
  responsive({Key? key, required this.mobilescreen, required this.webscreen})
      : super(key: key);
  Widget mobilescreen;
  Widget webscreen;
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraint) {
        return constraint.maxWidth > 600 ? webscreen : mobilescreen;
      },
    );
  }
}
