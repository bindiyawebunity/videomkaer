import 'package:flutter/material.dart';
import 'package:videomaker/common/Common_Text_Field.dart';
import 'package:videomaker/common/common_elevated_button.dart';
import 'package:videomaker/model/String.dart';
import 'package:videomaker/model/TextStyle.dart';
import 'package:videomaker/model/color.dart';
import 'package:videomaker/screen/sign_up.dart';
import 'home_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
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
            padding: const EdgeInsets.all(15.0),
            child: Column(
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.07,
                ),
                Center(
                    child: SizedBox(
                        height: MediaQuery.of(context).size.height * 0.22,
                        width: MediaQuery.of(context).size.width * 0.50,
                        child: const Image(
                          image: AssetImage(
                            "assets/loginPage.png",
                          ),
                          fit: BoxFit.cover,
                        ))),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.05,
                ),
                Text(
                  StringFile.loginTitle,
                  style: TextStyleFile.loginPageTitle,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                          left: MediaQuery.of(context).size.width * 0.06,
                          top: MediaQuery.of(context).size.height * 0.04),
                      child: Text(
                        StringFile.loginPage,
                        style: TextStyleFile.loginPageText,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          left: MediaQuery.of(context).size.width * 0.02,
                          top: MediaQuery.of(context).size.height * 0.04),
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
                      iconData: Icons.mail,
                      hintText: "abc@gmail.com",
                      obscureText: false,
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          left: MediaQuery.of(context).size.width * 0.02,
                          top: MediaQuery.of(context).size.height * 0.05),
                      child: Text(
                        "Password",
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
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.01,
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                              left: MediaQuery.of(context).size.width * 0.35),
                          child: Text(
                            StringFile.loginPageLast,
                            style: TextStyle(
                                fontSize: 14, color: ColorFile.textColor),
                          ),
                        ),
                        TextButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const SignUpPage(),
                                  ));
                            },
                            child: Text(
                              "SignUp",
                              style: TextStyle(
                                  color: ColorFile.textColor,
                                  fontWeight: FontWeight.bold),
                            ))
                      ],
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.05,
                    ),
                    Center(
                        child: CommonElevatedButton(
                            width: MediaQuery.of(context).size.width * 0.6,
                            height: MediaQuery.of(context).size.height * 0.05,
                            text: "Login",
                            backgroundColor: ColorFile.elevatedColor,
                            onPressed: () async {
                              //   var loginEmail = email.text.trim();
                              //   var loginPassword = password.text.trim();
                              //   try {
                              //     final User? firebaseUsers = (await FirebaseAuth
                              //             .instance
                              //             .signInWithEmailAndPassword(
                              //                 email: loginEmail,
                              //                 password: loginPassword))
                              //         .user;
                              //     if (firebaseUsers != null) {
                              if (_formKey.currentState!.validate()) {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => const HomePage(),
                                    ));

                                //     } else {
                                //       const SnackBar(
                                //           content: Text("check Email & Password"));
                                //     }
                                //   } on FirebaseAuthException catch (e) {
                                //     if (kDebugMode) {
                                //       print("error$e");
                                //     }
                                //   }
                              }
                            }))
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
