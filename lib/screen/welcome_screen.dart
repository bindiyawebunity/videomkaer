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
        padding: EdgeInsets.all(MediaQuery.of(context).size.width * 0.03),
        child: Column(
          children: [
            SizedBox(height: MediaQuery.of(context).size.height * 0.04),
            const Image(
              image: AssetImage(
                "assets/welcomePage.png",
              ),
              fit: BoxFit.cover,
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.06),
            Center(
              child: Text(
                StringFile.welcomeText,
                style: TextStyleFile.welcomeText,
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.04),
            Center(
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Text(
                  StringFile.welcomePageText,
                  style: TextStyleFile.welcomePageText,
                ),
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.07),
            CommonElevatedButton(
              width: MediaQuery.of(context).size.height * 0.3,
              height: MediaQuery.of(context).size.width * 0.10,
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
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.03,
            ),
            CommonElevatedButton(
              width: MediaQuery.of(context).size.height * 0.3,
              height: MediaQuery.of(context).size.width * 0.10,
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
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.03,
            ),
            CommonElevatedButton(
              width: MediaQuery.of(context).size.height * 0.3,
              height: MediaQuery.of(context).size.width * 0.10,
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
    );
  }
}
