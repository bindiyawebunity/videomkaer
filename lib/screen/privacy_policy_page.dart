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
        backgroundColor: ColorFile.backGroundColor,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back_ios_new,
              color: Colors.white,
            )),
        title: const Center(
          child: Text(
            "Privacy Policy",
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
      backgroundColor: ColorFile.backGroundColor,
      body: const Padding(
        padding: EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Last Revised: December 25, 2021",
              style: TextStyle(color: Colors.white),
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              "This Document “Privacy Policy” (Hereinafter \n Referred to as “Policy”) is the terms and con-\n editions for Collection and use of the Personal \nInformation of the User (Hereinafter refered \n"
              "to also as “you”)by Wot Digital Hereinafter A.S \n((Hereinafter Referred to as “Wot”during \nDownload, Installation and Use of the Mobile\n Application,",
              style: TextStyle(color: Colors.white),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "1. Types of Data We Collect.",
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "A privacy policy is a legal document where you disclose "
              "what data you collect from users, how you manage the "
              "collected data and how you use that data. The important"
              " objective of a privacy policy is to inform users how you"
              " collect, use and manage the collected.",
              style: TextStyle(color: Colors.white),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "2. Use of Your Personal Data",
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "The Privacy Policy Generator (privacy policy generator.info) "
              "is a free generator of privacy policies for websites, apps & "
              "Facebook pages/app. You can use our free generator to create "
              "the privacy policy for your business.",
              style: TextStyle(color: Colors.white),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Disclosure of Your Personal Data",
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "The most important thing to remember is that a privacy"
              " policy is required by law if you collect data from users, "
              "either directly or indirectly. For example, if you have a "
              "contact form on your website you need a privacy policy.",
              style: TextStyle(color: Colors.white),
            )
          ],
        ),
      ),
    );
  }
}
