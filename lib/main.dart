import 'package:flutter/material.dart';
import 'package:videomaker/screen/use_template_page.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'model/color.dart';

Future<void> main() async {
  // WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp();
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  FlutterNativeSplash.remove();
  runApp(const MyApp());
}

Future initializeApp(BuildContext? context) async {
  await Future.delayed(const Duration(seconds: 3));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      darkTheme: ThemeData(brightness: Brightness.dark),
      theme: ThemeData(
          appBarTheme: AppBarTheme(color: ColorFile.backGroundColor),
          primarySwatch: Colors.blue,
          radioTheme: RadioThemeData(
              fillColor:
                  MaterialStateColor.resolveWith((states) => Colors.red))),
      home: const UseTemplatePage(),
    );
  }
}
