import 'package:flutter/material.dart';
import 'package:instagram/Controller/bottom_controller.dart';
import 'package:instagram/View/Mobile%20screen/feedscreen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => bottomNaviagtion(),
        ),
      ],
      child: MaterialApp(
        title: "Instagram",
        debugShowCheckedModeBanner: false,
        home: bottomtab(),
      ),
    );
  }
}
