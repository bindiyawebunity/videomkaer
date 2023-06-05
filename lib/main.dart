import 'package:flutter/material.dart';
import 'package:videomaker/screen/home_page.dart';
import 'package:videomaker/screen/login_page.dart';
import 'package:videomaker/screen/phone_verification_page.dart';
import 'package:videomaker/screen/searchPage.dart';
import 'package:videomaker/screen/sent_code_page.dart';
import 'package:videomaker/screen/sign_up.dart';
import 'package:videomaker/screen/welcome_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      darkTheme: ThemeData(brightness: Brightness.dark),
      home: const SearchPage(),
      routes: {
        '/': (context) => const WelcomeScreen(),
        '/login': (context) => const LoginPage(),
        '/signUp': (context) => const SignUpPage(),
        '/homePage': (context) => const HomePage(),
        '/phoneVerification': (context) => const PhoneVerificationPage(),
        '/sentOtp': (context) => const SentCodePage(),
        '/searchPage': (context) => const SearchPage(),
      },
    );
  }
}
