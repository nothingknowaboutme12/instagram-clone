import 'package:flutter/material.dart';
import 'package:instagram/View/Auth%20Screen/sign_up.dart';
import 'package:instagram/View/Constant/constant.dart';
import 'package:instagram/View/Widget/textfield.dart';

class SignInScreen extends StatelessWidget {
  SignInScreen({Key? key}) : super(key: key);
  TextEditingController? userNameC;
  TextEditingController? userpassword;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Spacer(),
          Container(
            height: size.height / 8,
            width: size.width,
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(
                    Asset.logo,
                  ),
                  fit: BoxFit.contain),
            ),
          ),
          SizedBox(
            height: size.height / 20,
          ),
          Container(
            // height: size.height,
            margin: EdgeInsets.symmetric(horizontal: size.height / 40),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                customTextfield(
                  controller: userNameC,
                  hintText: "Enter a email",
                ),
                SizedBox(
                  height: size.height / 80,
                ),
                customTextfield(
                  controller: userpassword,
                  hintText: "Enter a password",
                ),
              ],
            ),
          ),
          SizedBox(
            height: size.height / 40,
          ),
          Container(
            width: size.width / 2,
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.grey.shade800),
              child: Text("Sign in"),
            ),
          ),
          Spacer(),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text("Don't have an account"),
              TextButton(
                  onPressed: () {
                    Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(
                          builder: (context) => signup(),
                        ),
                        (route) => false);
                  },
                  child: Text(
                    "Sign up",
                    style: TextStyle(
                      fontStyle: FontStyle.italic,
                    ),
                  ))
            ],
          )
        ],
      ),
    );
  }
}
