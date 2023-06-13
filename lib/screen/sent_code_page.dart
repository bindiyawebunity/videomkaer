import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';
import 'package:videomaker/common/common_elevated_button.dart';
import 'package:videomaker/model/String.dart';
import 'package:videomaker/model/TextStyle.dart';
import 'package:videomaker/model/color.dart';
import 'package:videomaker/screen/home_page.dart';

class SentCodePage extends StatefulWidget {
  const SentCodePage({
    Key? key,
  }) : super(key: key);

  @override
  State<SentCodePage> createState() => _SentCodePageState();
}

class _SentCodePageState extends State<SentCodePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorFile.backGroundColor,
      body: SingleChildScrollView(
        child: Column(
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
            Pinput(
              length: 6,
              showCursor: true,
              defaultPinTheme: PinTheme(
                height: 60,
                width: 60,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.white),
                ),
                textStyle: TextStyle(color: ColorFile.textColor),
              ),
              onSubmitted: (value) {},
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
      ),
    );
  }
}
