import 'package:flutter/material.dart';
import 'package:instagram/View/Auth%20Screen/sign_in.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Instagram",
      debugShowCheckedModeBanner: false,
      home: SignInScreen(),
    );
  }
}
