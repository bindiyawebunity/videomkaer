import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:videomaker/model/String.dart';
import 'package:videomaker/model/TextStyle.dart';
import 'package:videomaker/model/color.dart';
import 'package:videomaker/screen/sent_code_page.dart';
import '../common/Common_Text_Field.dart';
import '../common/common_elevated_button.dart';
import 'package:country_picker/country_picker.dart';

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
            padding: const EdgeInsets.all(15.0),
            child: Column(
              children: [
                const SizedBox(
                  height: 150,
                ),
                const Center(
                  child: SizedBox(
                    height: 300,
                    width: 300,
                    child: Image(
                        image: AssetImage(
                      "assets/phoneVerificationPage.png",
                    )),
                  ),
                ),
                Text(
                  StringFile.phoneVerification,
                  style: TextStyleFile.phoneVerificationPageTitle,
                ),
                const SizedBox(
                  height: 13,
                ),
                Text(
                  StringFile.phoneVerificationText,
                  style: TextStyleFile.phoneVerificationPageText,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0, top: 40),
                      child: Text(
                        "PhoneNumber",
                        style: TextStyle(color: ColorFile.textColor),
                      ),
                    ),
                    const SizedBox(
                      height: 13,
                    ),
                    // IntlPhoneField(
                    //   decoration: const InputDecoration(
                    //     labelText: 'Phone Number',
                    //     border: OutlineInputBorder(
                    //       borderSide: BorderSide(),
                    //     ),
                    //   ),
                    // ),
                    CommonTextField(
                      onPress: () {
                        showCountryPicker(
                          showPhoneCode: true,
                          countryListTheme: const CountryListThemeData(
                              textStyle:
                                  TextStyle(fontSize: 17, color: Colors.black)),
                          context: context,
                          onSelect: (Country value) {
                            countryCode = value.phoneCode.toString();
                            setState(() {});
                            print(value.countryCode.toString());
                            print(value.phoneCode.toString());
                          },
                        );
                      },
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter some text';
                        } else if (value.length <= 10) {
                          return "Phone number is invalid";
                        }
                        return null;
                      },
                      controller: phoneNumber,
                      iconData: Icons.phone,
                      hintText: "+91 96********",
                      obscureText: false,
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    Center(
                        child: CommonElevatedButton(
                      width: 250,
                      height: 40,
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
