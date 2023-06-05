import 'package:flutter/material.dart';
import 'package:videomaker/common/Common_Text_Field.dart';
import 'package:videomaker/common/common_elevated_button.dart';
import 'package:videomaker/model/String.dart';
import 'package:videomaker/model/TextStyle.dart';
import 'package:videomaker/model/color.dart';
import 'package:videomaker/screen/home_page.dart';
import 'package:videomaker/screen/sign_up.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: ColorFile.backGroundColor,
      body: Form(
        key: _formKey,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                const Center(child: Image(image: AssetImage("assets/loginPage.png"))),
                Center(
                    child: Text(
                  StringFile.loginTitle,
                  style: TextStyleFile.loginPageTitle,
                )),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 80.0, top: 30),
                      child: Text(
                        StringFile.loginPage,
                        style: TextStyleFile.loginPageText,
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 8.0, top: 40),
                      child: Text(
                        "Email",
                        style: TextStyle(color: Colors.white),
                      ),
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
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 8.0, top: 40),
                      child: Text(
                        "Password",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    TextFormField(
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter some text';
                        } else if (value.length < 6) {
                          return "password must be at least 6 latter";
                        }
                        return null;
                      },
                      obscureText: true,
                      controller: password,
                      decoration: InputDecoration(
                          hintText: "*****",
                          prefixIcon: const Icon(Icons.lock),
                          fillColor: ColorFile.textFieldColor,
                          filled: true,
                          border: const OutlineInputBorder()),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 230.0),
                          child: Text(
                            StringFile.loginPageLast,
                            style:
                                const TextStyle(fontSize: 14, color: Colors.white),
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
                            child: const Text(
                              "SignUp",
                              style: TextStyle(
                                  color: Colors.white, fontWeight: FontWeight.bold),
                            ))
                      ],
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    Center(
                        child: CommonElevatedButton(
                      width: 250,
                      height: 40,
                      text: "Login",
                      backgroundColor: ColorFile.elevatedColor,
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const HomePage(),
                              ));
                        }
                      },
                    )),
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
