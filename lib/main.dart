import 'package:flutter/material.dart';
import 'package:videomaker/screen/searchPage.dart';
import 'package:videomaker/screen/welcome_screen.dart';

Future<void> main() async {
  // WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      darkTheme: ThemeData(brightness: Brightness.dark),
      theme: ThemeData(
          primarySwatch: Colors.blue,
          radioTheme: RadioThemeData(
              fillColor:
                  MaterialStateColor.resolveWith((states) => Colors.red))),
      home: const SearchPage(),
    );
  }
}
