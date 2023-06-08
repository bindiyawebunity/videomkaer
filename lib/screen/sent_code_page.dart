import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:videomaker/common/common_elevated_button.dart';
import 'package:videomaker/model/String.dart';
import 'package:videomaker/model/TextStyle.dart';
import 'package:videomaker/model/color.dart';
import 'package:videomaker/screen/home_page.dart';

class SentCodePage extends StatefulWidget {
  const SentCodePage({Key? key}) : super(key: key);

  @override
  State<SentCodePage> createState() => _SentCodePageState();
}

class _SentCodePageState extends State<SentCodePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorFile.backGroundColor,
      body: Column(
        children: [
          const SizedBox(
            height: 100,
          ),
          const Center(
            child: SizedBox(
              height: 400,
              width: 400,
              child: Image(
                  image: AssetImage(
                "assets/sentOtpPage.png",
              )),
            ),
          ),
          Text(
            StringFile.otoVerification,
            style: TextStyleFile.otpVerificationPageTitle,
          ),
          const SizedBox(
            height: 15,
          ),
          Text(
            StringFile.otoVerificationText,
            style: TextStyleFile.otpVerificationPageText,
          ),
          const SizedBox(
            height: 25,
          ),
          OtpTextField(
            numberOfFields: 4,
            borderColor: Colors.white,
            textStyle: TextStyle(color: ColorFile.textColor),

            showFieldAsBox: true,

            onCodeChanged: (String code) {},

            onSubmit: (String verificationCode) {
              showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      title: const Text("Verification Code"),
                      content: Text('Code entered is $verificationCode'),
                    );
                  });
            }, // end onSubmit
          ),
          const SizedBox(
            height: 30,
          ),
          CommonElevatedButton(
            width: 250,
            height: 40,
            text: "Verify",
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const HomePage(),
                  ));
            },
            backgroundColor: ColorFile.elevatedColor,
          )
        ],
      ),
    );
  }
}
