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
        backgroundColor: ColorFile.backGroundColor,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_ios_new,
          ),
          color: Colors.white,
        ),
        title: const Center(
          child: Text(
            "Settings",
            style: TextStyle(color: Colors.white),
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
                        leading: const Icon(
                          Icons.language,
                          color: Colors.white,
                        ),
                        title: const Text(
                          "Language",
                          style: TextStyle(color: Colors.white),
                        ),
                        trailing: IconButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const LanguagePage(),
                                ));
                          },
                          icon: const Icon(
                            Icons.navigate_next,
                            color: Colors.white,
                          ),
                        )),
                    ListTile(
                        leading: const Icon(
                          Icons.privacy_tip,
                          color: Colors.white,
                        ),
                        title: const Text(
                          "Privacy Policy",
                          style: TextStyle(color: Colors.white),
                        ),
                        trailing: IconButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const PrivacyPolicyPage(),
                                ));
                          },
                          icon: const Icon(
                            Icons.navigate_next,
                            color: Colors.white,
                          ),
                        )),
                    ListTile(
                        leading: const Icon(
                          Icons.save_as_sharp,
                          color: Colors.white,
                        ),
                        title: const Text(
                          "Terms & Conditions",
                          style: TextStyle(color: Colors.white),
                        ),
                        trailing: IconButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const TermsOfServicePage(),
                                ));
                          },
                          icon: const Icon(
                            Icons.navigate_next,
                            color: Colors.white,
                          ),
                        )),
                    ListTile(
                        leading: const Icon(
                          Icons.mail,
                          color: Colors.white,
                        ),
                        title: const Text(
                          "Contact Us",
                          style: TextStyle(color: Colors.white),
                        ),
                        trailing: IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.navigate_next,
                            color: Colors.white,
                          ),
                        )),
                    ListTile(
                        leading: const Icon(
                          FontAwesomeIcons.instagram,
                          color: Colors.red,
                        ),
                        title: const Text(
                          "Instagram",
                          style: TextStyle(color: Colors.white),
                        ),
                        trailing: IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.navigate_next,
                            color: Colors.white,
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
