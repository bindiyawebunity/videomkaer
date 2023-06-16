import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:videomaker/screen/login_page.dart';
import 'package:videomaker/screen/phone_verification_page.dart';
import '../common/Common_Text_Field.dart';
import '../common/common_elevated_button.dart';
import '../model/String.dart';
import '../model/TextStyle.dart';
import '../model/color.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController username = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  bool passwordVisible = false;
  @override
  void initState() {
    super.initState();
    passwordVisible = true;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorFile.backGroundColor,
      body: Form(
        key: _formKey,
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(MediaQuery.of(context).size.width * 0.02),
            child: Column(
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.03,
                ),
                const Image(image: AssetImage("assets/signUpPage.png")),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                          left: MediaQuery.of(context).size.width * 0.28,
                          top: MediaQuery.of(context).size.height * 0.03),
                      child: Text(
                        StringFile.signUpPageText,
                        style: TextStyleFile.signUpPageText,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          left: MediaQuery.of(context).size.width * 0.02,
                          top: MediaQuery.of(context).size.height * 0.03),
                      child: Text(
                        "UserName",
                        style: TextStyle(color: ColorFile.textColor),
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.01,
                    ),
                    CommonTextField(
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter some text';
                        }
                        return null;
                      },
                      controller: username,
                      iconData: Icons.account_circle,
                      hintText: "XYZ",
                      obscureText: false,
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          left: MediaQuery.of(context).size.width * 0.02,
                          top: MediaQuery.of(context).size.height * 0.03),
                      child: Text(
                        "Email",
                        style: TextStyle(color: ColorFile.textColor),
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.01,
                    ),
                    CommonTextField(
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter some text';
                        }
                        return null;
                      },
                      controller: email,
                      iconData: Icons.email,
                      hintText: "abc@gmail.com",
                      obscureText: false,
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          left: MediaQuery.of(context).size.width * 0.02,
                          top: MediaQuery.of(context).size.height * 0.03),
                      child: Text(
                        "password",
                        style: TextStyle(color: ColorFile.textColor),
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.01,
                    ),
                    CommonTextField(
                      iconDataSuffix: passwordVisible
                          ? Icons.visibility_off
                          : Icons.visibility,
                      onPressed: () {
                        setState(
                          () {
                            passwordVisible = !passwordVisible;
                          },
                        );
                      },
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter some text';
                        } else if (value.length < 6) {
                          return "password must be at least 6 latter";
                        }
                        return null;
                      },
                      controller: password,
                      iconData: Icons.lock,
                      hintText: "******",
                      obscureText: passwordVisible,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.01,
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                              left: MediaQuery.of(context).size.width * 0.47),
                          child: Text(
                            StringFile.signUpPageText,
                            style: TextStyle(
                                fontSize: 14, color: ColorFile.textColor),
                          ),
                        ),
                        TextButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const LoginPage(),
                                  ));
                            },
                            child: Text(
                              "Login",
                              style: TextStyle(
                                  color: ColorFile.textColor,
                                  fontWeight: FontWeight.bold),
                            ))
                      ],
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.04,
                    ),
                    Center(
                        child: CommonElevatedButton(
                      width: MediaQuery.of(context).size.width * 0.6,
                      height: MediaQuery.of(context).size.height * 0.05,
                      text: "Sign Up",
                      backgroundColor: ColorFile.elevatedColor,
                      onPressed: () async {
                        // var userName = username.text.trim();
                        // var userEmail = email.text.trim();
                        // var userPassword = password.text.trim();
                        //
                        // FirebaseAuth.instance
                        //     .createUserWithEmailAndPassword(
                        //         email: userEmail, password: userPassword)
                        //     .then((value) {
                        //   FirebaseFirestore.instance
                        //       .collection("users")
                        //       .doc()
                        //       .set({
                        //     "username": userName,
                        //     "email": userEmail,
                        //     "password": userPassword,
                        //   });
                        //
                        //   if (kDebugMode) {
                        //     print("data created");
                        //   }
                        // });

                        if (_formKey.currentState!.validate()) {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    const PhoneVerificationPage(),
                              ));
                          final SharedPreferences prefs =
                              await SharedPreferences.getInstance();
                          await prefs.setString('UserName', username.text);
                          await prefs.setString('Email', email.text);
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
