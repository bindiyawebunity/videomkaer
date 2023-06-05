import 'package:flutter/material.dart';
import 'package:videomaker/model/String.dart';
import 'package:videomaker/model/TextStyle.dart';
import 'package:videomaker/model/color.dart';
import 'package:videomaker/screen/sent_code_page.dart';
import '../common/Common_Text_Field.dart';
import '../common/common_elevated_button.dart';

class PhoneVerificationPage extends StatefulWidget {
  const PhoneVerificationPage({Key? key}) : super(key: key);

  @override
  State<PhoneVerificationPage> createState() => _PhoneVerificationPageState();
}

class _PhoneVerificationPageState extends State<PhoneVerificationPage> {
  TextEditingController phoneNumber = TextEditingController();
  final _formKey = GlobalKey<FormState>();
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
                    const Padding(
                      padding: EdgeInsets.only(left: 8.0, top: 40),
                      child: Text(
                        "PhoneNumber",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    const SizedBox(
                      height: 13,
                    ),
                    CommonTextField(
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
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const SentCodePage(),
                              ));
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
