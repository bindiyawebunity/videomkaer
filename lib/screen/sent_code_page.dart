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
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.13,
            ),
            Center(
              child: SizedBox(
                height: MediaQuery.of(context).size.height * 0.300,
                width: MediaQuery.of(context).size.width * 0.700,
                child: const Image(
                  image: AssetImage(
                    "assets/sentOtpPage.png",
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.06,
            ),
            Text(
              StringFile.otoVerification,
              style: TextStyleFile.otpVerificationPageTitle,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            Text(
              StringFile.otoVerificationText,
              style: TextStyleFile.otpVerificationPageText,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.06,
            ),
            Pinput(
              length: 6,
              showCursor: true,
              defaultPinTheme: PinTheme(
                height: MediaQuery.of(context).size.height * 0.06,
                width: MediaQuery.of(context).size.width * 0.11,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.white),
                ),
                textStyle: TextStyle(color: ColorFile.textColor),
              ),
              onSubmitted: (value) {},
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.11,
            ),
            CommonElevatedButton(
              width: MediaQuery.of(context).size.width * 0.6,
              height: MediaQuery.of(context).size.height * 0.05,
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
