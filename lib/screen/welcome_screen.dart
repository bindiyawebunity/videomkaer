import 'package:flutter/material.dart';
import 'package:videomaker/common/common_elevated_button.dart';
import 'package:videomaker/model/String.dart';
import 'package:videomaker/model/TextStyle.dart';
import 'package:videomaker/model/color.dart';
import 'package:videomaker/screen/login_page.dart';
import 'package:videomaker/screen/privacy_policy_page.dart';
import 'package:videomaker/screen/sign_up.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorFile.backGroundColor,
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 65),
              const Image(
                image: AssetImage(
                  "assets/welcomePage.png",
                ),
                fit: BoxFit.cover,
              ),
              const SizedBox(height: 50),
              Center(
                child: Text(
                  StringFile.welcomeText,
                  style: TextStyleFile.welcomeText,
                ),
              ),
              const SizedBox(height: 40),
              Center(
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Text(
                    StringFile.welcomePageText,
                    style: TextStyleFile.welcomePageText,
                  ),
                ),
              ),
              const SizedBox(height: 50),
              CommonElevatedButton(
                width: 300,
                height: 40,
                text: StringFile.elevatedButton1Text,
                backgroundColor: ColorFile.elevatedColor,
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const LoginPage(),
                      ));
                },
              ),
              const SizedBox(
                height: 20,
              ),
              CommonElevatedButton(
                width: 300,
                height: 40,
                text: StringFile.elevatedButton2Text,
                backgroundColor: ColorFile.elevatedColor,
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const PrivacyPolicyPage(),
                      ));
                },
              ),
              const SizedBox(
                height: 20,
              ),
              CommonElevatedButton(
                width: 300,
                height: 40,
                text: StringFile.elevatedButton3Text,
                backgroundColor: ColorFile.elevatedColor,
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const SignUpPage(),
                      ));
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
