import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:videomaker/screen/language_page.dart';
import 'package:videomaker/screen/privacy_policy_page.dart';
import 'package:videomaker/screen/tream_service_page.dart';
import '../model/color.dart';

class SettingPage extends StatefulWidget {
  const SettingPage({Key? key}) : super(key: key);

  @override
  State<SettingPage> createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_ios_new,
          ),
          color: ColorFile.iconColor,
        ),
        title: Center(
          child: Text(
            "Settings",
            style: TextStyle(color: ColorFile.textColor),
          ),
        ),
      ),
      backgroundColor: ColorFile.backGroundColor,
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            const SizedBox(
              height: 50,
            ),
            Center(
              child: Container(
                height: 300,
                width: 350,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: const Color(0xFFFDFDFD).withOpacity(0.10)),
                child: Column(
                  children: [
                    ListTile(
                        leading: Icon(
                          Icons.language,
                          color: ColorFile.iconColor,
                        ),
                        title: Text(
                          "Language",
                          style: TextStyle(color: ColorFile.textColor),
                        ),
                        trailing: IconButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const LanguagePage(),
                                ));
                          },
                          icon: Icon(
                            Icons.navigate_next,
                            color: ColorFile.iconColor,
                          ),
                        )),
                    ListTile(
                        leading: Icon(
                          Icons.privacy_tip,
                          color: ColorFile.iconColor,
                        ),
                        title: Text(
                          "Privacy Policy",
                          style: TextStyle(color: ColorFile.textColor),
                        ),
                        trailing: IconButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      const PrivacyPolicyPage(),
                                ));
                          },
                          icon: Icon(
                            Icons.navigate_next,
                            color: ColorFile.iconColor,
                          ),
                        )),
                    ListTile(
                        leading: Icon(
                          Icons.save_as_sharp,
                          color: ColorFile.iconColor,
                        ),
                        title: Text(
                          "Terms & Conditions",
                          style: TextStyle(color: ColorFile.textColor),
                        ),
                        trailing: IconButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      const TermsOfServicePage(),
                                ));
                          },
                          icon: Icon(
                            Icons.navigate_next,
                            color: ColorFile.iconColor,
                          ),
                        )),
                    ListTile(
                        leading: Icon(
                          Icons.mail,
                          color: ColorFile.iconColor,
                        ),
                        title: Text(
                          "Contact Us",
                          style: TextStyle(color: ColorFile.textColor),
                        ),
                        trailing: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.navigate_next,
                            color: ColorFile.iconColor,
                          ),
                        )),
                    ListTile(
                        leading: Icon(
                          FontAwesomeIcons.instagram,
                          color: ColorFile.iconColor,
                        ),
                        title: Text(
                          "Instagram",
                          style: TextStyle(color: ColorFile.textColor),
                        ),
                        trailing: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.navigate_next,
                            color: ColorFile.iconColor,
                          ),
                        )),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
