import 'package:flutter/material.dart';
import '../model/color.dart';

class LanguagePage extends StatefulWidget {
  const LanguagePage({Key? key}) : super(key: key);

  @override
  State<LanguagePage> createState() => _LanguagePageState();
}

class _LanguagePageState extends State<LanguagePage> {
  String _selectedLanguage = 'English (US)';
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
              color: Colors.white,
            )),
        title: const Center(
          child: Text(
            "Language",
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
      backgroundColor: ColorFile.backGroundColor,
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                " Suggested Language ",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                  height: 100,
                  width: 450,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: const Color(0xFFFDFDFD).withOpacity(0.10)),
                  child: Column(
                    children: [
                      ListTile(
                          title: const Text(
                            "English (US)",
                            style: TextStyle(color: Colors.white),
                          ),
                          trailing: Radio(
                              value: "English (US)",
                              groupValue: _selectedLanguage,
                              onChanged: (value) {
                                setState(() {
                                  _selectedLanguage = value!;
                                });
                              })),
                      ListTile(
                          title: const Text(
                            "English (UK)",
                            style: TextStyle(color: Colors.white),
                          ),
                          trailing: Radio(
                              activeColor: Colors.red,
                              fillColor: MaterialStateColor.resolveWith(
                                  (states) => Colors.red),
                              value: "English (UK)",
                              groupValue: _selectedLanguage,
                              onChanged: (value) {
                                setState(() {
                                  _selectedLanguage = value!;
                                });
                              })),
                    ],
                  )),
              const SizedBox(
                height: 30,
              ),
              const Text(
                " Language ",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                  height: 450,
                  width: 450,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: const Color(0xFFFDFDFD).withOpacity(0.10)),
                  child: Column(
                    children: [
                      ListTile(
                          title: const Text(
                            "Deutsch",
                            style: TextStyle(color: Colors.white),
                          ),
                          trailing: Radio(
                              activeColor: Colors.red,
                              fillColor: MaterialStateColor.resolveWith(
                                  (states) => Colors.red),
                              value: "Deutsch",
                              groupValue: _selectedLanguage,
                              onChanged: (value) {
                                setState(() {
                                  _selectedLanguage = value!;
                                });
                              })),
                      ListTile(
                          title: const Text(
                            "Hindi",
                            style: TextStyle(color: Colors.white),
                          ),
                          trailing: Radio(
                              activeColor: Colors.red,
                              fillColor: MaterialStateColor.resolveWith(
                                  (states) => Colors.red),
                              value: "Hindi",
                              groupValue: _selectedLanguage,
                              onChanged: (value) {
                                setState(() {
                                  _selectedLanguage = value!;
                                });
                              })),
                      ListTile(
                          title: const Text(
                            "Spanish",
                            style: TextStyle(color: Colors.white),
                          ),
                          trailing: Radio(
                              activeColor: Colors.red,
                              fillColor: MaterialStateColor.resolveWith(
                                  (states) => Colors.red),
                              value: "Spanish",
                              groupValue: _selectedLanguage,
                              onChanged: (value) {
                                setState(() {
                                  _selectedLanguage = value!;
                                });
                              })),
                      ListTile(
                          title: const Text(
                            "French",
                            style: TextStyle(color: Colors.white),
                          ),
                          trailing: Radio(
                              activeColor: Colors.red,
                              fillColor: MaterialStateColor.resolveWith(
                                  (states) => Colors.red),
                              value: "French",
                              groupValue: _selectedLanguage,
                              onChanged: (value) {
                                setState(() {
                                  _selectedLanguage = value!;
                                });
                              })),
                      ListTile(
                          title: const Text(
                            "Arabic",
                            style: TextStyle(color: Colors.white),
                          ),
                          trailing: Radio(
                              activeColor: Colors.red,
                              fillColor: MaterialStateColor.resolveWith(
                                  (states) => Colors.red),
                              value: "Arabic",
                              groupValue: _selectedLanguage,
                              onChanged: (value) {
                                setState(() {
                                  _selectedLanguage = value!;
                                });
                              })),
                      ListTile(
                          title: const Text(
                            "Bengali",
                            style: TextStyle(color: Colors.white),
                          ),
                          trailing: Radio(
                              activeColor: Colors.red,
                              fillColor: MaterialStateColor.resolveWith(
                                  (states) => Colors.red),
                              value: "Bengali",
                              groupValue: _selectedLanguage,
                              onChanged: (value) {
                                setState(() {
                                  _selectedLanguage = value!;
                                });
                              })),
                      ListTile(
                          title: const Text(
                            "Russion",
                            style: TextStyle(color: Colors.white),
                          ),
                          trailing: Radio(
                              activeColor: Colors.red,
                              fillColor: MaterialStateColor.resolveWith(
                                  (states) => Colors.red),
                              value: "DeutRussionsch",
                              groupValue: _selectedLanguage,
                              onChanged: (value) {
                                setState(() {
                                  _selectedLanguage = value!;
                                });
                              })),
                      ListTile(
                          title: const Text(
                            "Italiano",
                            style: TextStyle(color: Colors.white),
                          ),
                          trailing: Radio(
                              activeColor: Colors.red,
                              fillColor: MaterialStateColor.resolveWith(
                                  (states) => Colors.red),
                              value: "Italiano",
                              groupValue: _selectedLanguage,
                              onChanged: (value) {
                                setState(() {
                                  _selectedLanguage = value!;
                                });
                              })),
                      ListTile(
                          title: const Text(
                            "Espanol",
                            style: TextStyle(color: Colors.white),
                          ),
                          trailing: Radio(
                              activeColor: Colors.red,
                              fillColor: MaterialStateColor.resolveWith(
                                  (states) => Colors.red),
                              value: "Espanol",
                              groupValue: _selectedLanguage,
                              onChanged: (value) {
                                setState(() {
                                  _selectedLanguage = value!;
                                });
                              })),
                    ],
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
