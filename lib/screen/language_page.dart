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
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back_ios_new,
              color: ColorFile.iconColor,
            )),
        title: Center(
          child: Text(
            "Language",
            style: TextStyle(color: ColorFile.textColor),
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
              Text(
                " Suggested Language ",
                style: TextStyle(color: ColorFile.textColor, fontSize: 20),
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                  height: 130,
                  width: 450,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: const Color(0xFFFDFDFD).withOpacity(0.10)),
                  child: Column(
                    children: [
                      ListTile(
                          title: Text(
                            "English (US)",
                            style: TextStyle(color: ColorFile.textColor),
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
                          title: Text(
                            "English (UK)",
                            style: TextStyle(color: ColorFile.textColor),
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
              Text(
                " Language ",
                style: TextStyle(color: ColorFile.textColor, fontSize: 20),
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                  height: 530,
                  width: 450,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: const Color(0xFFFDFDFD).withOpacity(0.10)),
                  child: Column(
                    children: [
                      ListTile(
                          title: Text(
                            "Deutsch",
                            style: TextStyle(color: ColorFile.textColor),
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
                          title: Text(
                            "Hindi",
                            style: TextStyle(color: ColorFile.textColor),
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
                          title: Text(
                            "Spanish",
                            style: TextStyle(color: ColorFile.textColor),
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
                          title: Text(
                            "French",
                            style: TextStyle(color: ColorFile.textColor),
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
                          title: Text(
                            "Arabic",
                            style: TextStyle(color: ColorFile.textColor),
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
                          title: Text(
                            "Bengali",
                            style: TextStyle(color: ColorFile.textColor),
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
                          title: Text(
                            "Russion",
                            style: TextStyle(color: ColorFile.textColor),
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
                          title: Text(
                            "Italiano",
                            style: TextStyle(color: ColorFile.textColor),
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
                          title: Text(
                            "Espanol",
                            style: TextStyle(color: ColorFile.textColor),
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
