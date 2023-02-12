import 'package:flutter/material.dart';
import 'package:instagram/View/Auth%20Screen/sign_in.dart';
import 'package:instagram/View/Constant/constant.dart';
import 'package:instagram/View/Widget/textfield.dart';

class signup extends StatefulWidget {
  signup({Key? key}) : super(key: key);

  @override
  State<signup> createState() => _signupState();
}

class _signupState extends State<signup> {
  @override
  Widget build(BuildContext context) {
    TextEditingController? userName;
    TextEditingController? userEmail;
    TextEditingController? userBio;
    TextEditingController? password;
    @override
    initState() {
      userName = TextEditingController();
      userEmail = TextEditingController();
      userBio = TextEditingController();
      password = TextEditingController();
    }

    Size size = MediaQuery.of(context).size;

    @override
    void dispose() {
      userName!.dispose();
      userEmail!.dispose();
      userBio!.dispose();
      password!.dispose();
      super.dispose();
    }

    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Spacer(),
          Container(
            height: size.height / 8,
            width: size.width,
            decoration: BoxDecoration(
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
                  controller: userName,
                  hintText: "Enter a username",
                ),
                SizedBox(
                  height: size.height / 80,
                ),
                customTextfield(
                  controller: userEmail,
                  hintText: "Enter a email",
                ),
                SizedBox(
                  height: size.height / 80,
                ),
                customTextfield(
                  controller: userBio,
                  hintText: "Enter a bio",
                ),
                SizedBox(
                  height: size.height / 80,
                ),
                customTextfield(
                  controller: userBio,
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
              child: Text("Sign up"),
            ),
          ),
          Spacer(),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text("Already have an account"),
              TextButton(
                  onPressed: () {
                    Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SignInScreen(),
                        ),
                        (route) => false);
                  },
                  child: Text("Sign in"))
            ],
          )
        ],
      ),
    );
  }
}
