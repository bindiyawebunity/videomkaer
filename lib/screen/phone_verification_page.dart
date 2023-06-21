import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:videomaker/model/String.dart';
import 'package:videomaker/model/TextStyle.dart';
import 'package:videomaker/model/color.dart';
import 'package:videomaker/screen/sent_code_page.dart';
import '../common/common_elevated_button.dart';

class PhoneVerificationPage extends StatefulWidget {
  const PhoneVerificationPage({Key? key}) : super(key: key);

  @override
  State<PhoneVerificationPage> createState() => _PhoneVerificationPageState();
}

class _PhoneVerificationPageState extends State<PhoneVerificationPage> {
  TextEditingController phoneNumber = TextEditingController();

  final _formKey = GlobalKey<FormState>();
  String countryCode = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorFile.backGroundColor,
      body: Form(
        key: _formKey,
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(MediaQuery.of(context).size.width * 0.03),
            child: Column(
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.11,
                ),
                Center(
                  child: SizedBox(
                    height: MediaQuery.of(context).size.height * 0.300,
                    width: MediaQuery.of(context).size.width * 0.700,
                    child: const Image(
                      image: AssetImage(
                        "assets/phoneVerificationPage.png",
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.05,
                ),
                Text(
                  StringFile.phoneVerification,
                  style: TextStyleFile.phoneVerificationPageTitle,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.02,
                ),
                Text(
                  StringFile.phoneVerificationText,
                  style: TextStyleFile.phoneVerificationPageText,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                          left: MediaQuery.of(context).size.width * 0.02,
                          top: MediaQuery.of(context).size.height * 0.05),
                      child: Text(
                        "PhoneNumber",
                        style: TextStyle(color: ColorFile.textColor),
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.02,
                    ),
                    IntlPhoneField(
                      initialCountryCode: "IN",
                      style: const TextStyle(color: Colors.black),
                      controller: phoneNumber,
                      decoration: const InputDecoration(
                        fillColor: Colors.white,
                        filled: true,
                        labelText: 'Phone Number',
                        labelStyle: TextStyle(color: Colors.black),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.06,
                    ),
                    Center(
                        child: CommonElevatedButton(
                      width: MediaQuery.of(context).size.width * 0.6,
                      height: MediaQuery.of(context).size.height * 0.05,
                      text: "Send Code",
                      backgroundColor: ColorFile.elevatedColor,
                      onPressed: () async {
                        if (_formKey.currentState!.validate()) {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const SentCodePage(),
                              ));
                          final SharedPreferences prefs =
                              await SharedPreferences.getInstance();
                          await prefs.setString(
                              'PhoneNumber', phoneNumber.text);
                        }
                      },
                    )),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
