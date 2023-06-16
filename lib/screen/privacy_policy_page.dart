import 'package:flutter/material.dart';

import '../model/color.dart';

class PrivacyPolicyPage extends StatefulWidget {
  const PrivacyPolicyPage({Key? key}) : super(key: key);

  @override
  State<PrivacyPolicyPage> createState() => _PrivacyPolicyPageState();
}

class _PrivacyPolicyPageState extends State<PrivacyPolicyPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back_ios_new,
              color: ColorFile.iconColor,
            )),
        title: Center(
          child: Text(
            "Privacy Policy",
            style: TextStyle(color: ColorFile.textColor),
          ),
        ),
      ),
      backgroundColor: ColorFile.backGroundColor,
      body: Padding(
        padding: EdgeInsets.all(MediaQuery.of(context).size.width * 0.06),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Last Revised: December 25, 2021",
              style: TextStyle(color: ColorFile.textColor),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.03,
            ),
            Text(
              "This Document “Privacy Policy” (Hereinafter \n Referred to as “Policy”) is the terms and con-\n editions for Collection and use of the Personal \nInformation of the User (Hereinafter referred \n"
              "to also as “you”)by Wot Digital Hereinafter A.S \n((Hereinafter Referred to as “Wot”during \nDownload, Installation and Use of the Mobile\n Application,",
              style: TextStyle(color: ColorFile.textColor),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            Text(
              "1. Types of Data We Collect.",
              style: TextStyle(
                  color: ColorFile.textColor, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            Text(
              "A privacy policy is a legal document where you disclose "
              "what data you collect from users, how you manage the "
              "collected data and how you use that data. The important"
              " objective of a privacy policy is to inform users how you"
              " collect, use and manage the collected.",
              style: TextStyle(color: ColorFile.textColor),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            Text(
              "2. Use of Your Personal Data",
              style: TextStyle(
                  color: ColorFile.textColor, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            Text(
              "The Privacy Policy Generator (privacy policy generator.info) "
              "is a free generator of privacy policies for websites, apps & "
              "Facebook pages/app. You can use our free generator to create "
              "the privacy policy for your business.",
              style: TextStyle(color: ColorFile.textColor),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            Text(
              "Disclosure of Your Personal Data",
              style: TextStyle(
                  color: ColorFile.textColor, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            Text(
              "The most important thing to remember is that a privacy"
              " policy is required by law if you collect data from users, "
              "either directly or indirectly. For example, if you have a "
              "contact form on your website you need a privacy policy.",
              style: TextStyle(color: ColorFile.textColor),
            )
          ],
        ),
      ),
    );
  }
}
