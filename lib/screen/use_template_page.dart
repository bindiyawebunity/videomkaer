import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:videomaker/model/color.dart';
import 'package:videomaker/screen/customize_image_page.dart';

import 'login_page.dart';

class UseTemplatePage extends StatefulWidget {
  const UseTemplatePage({Key? key}) : super(key: key);

  @override
  State<UseTemplatePage> createState() => _UseTemplatePageState();
}

class _UseTemplatePageState extends State<UseTemplatePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.close,
              color: ColorFile.iconColor,
            )),
      ),
      backgroundColor: ColorFile.backGroundColor,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 120.0, top: 10),
                child: Container(
                    height: 450,
                    width: 250,
                    decoration: BoxDecoration(
                        color: ColorFile.iconColor,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.white, width: 1.5)),
                    child: const Image(
                      image: AssetImage("assets/homePage4.png"),
                      fit: BoxFit.fill,
                    )),
              ),
              const SizedBox(
                width: 30,
              ),
              Column(
                children: [
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.save,
                        color: ColorFile.iconColor,
                        size: 15,
                      )),
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        FontAwesomeIcons.music,
                        color: ColorFile.iconColor,
                        size: 15,
                      )),
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        FontAwesomeIcons.a,
                        color: ColorFile.iconColor,
                        size: 15,
                      )),
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.upload,
                        color: ColorFile.iconColor,
                        size: 15,
                      )),
                ],
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 170.0, top: 20),
            child: Text(
              "Use as Template",
              style: TextStyle(
                  color: ColorFile.textColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 18),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 130.0, top: 20),
            child: Text(
              "Replace all the clips with your own",
              style: TextStyle(color: ColorFile.textColor),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 70, top: 70),
            child: Row(
              children: [
                Container(
                  height: 58,
                  width: 40,
                  decoration: BoxDecoration(
                    color: ColorFile.editPageContainerColor,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Center(
                      child: Text(
                    "4.8",
                    style: TextStyle(color: ColorFile.textColor),
                  )),
                ),
                const SizedBox(
                  width: 20,
                ),
                Container(
                  height: 58,
                  width: 40,
                  decoration: BoxDecoration(
                    color: ColorFile.editPageContainerColor,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Center(
                      child: Text(
                    "0.4",
                    style: TextStyle(color: ColorFile.textColor),
                  )),
                ),
                const SizedBox(
                  width: 20,
                ),
                Container(
                  height: 58,
                  width: 40,
                  decoration: BoxDecoration(
                    color: ColorFile.editPageContainerColor,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Center(
                      child: Text(
                    "0.3",
                    style: TextStyle(color: ColorFile.textColor),
                  )),
                ),
                const SizedBox(
                  width: 20,
                ),
                Container(
                  height: 58,
                  width: 40,
                  decoration: BoxDecoration(
                    color: ColorFile.editPageContainerColor,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Center(
                      child: Text(
                    "0.3",
                    style: TextStyle(color: ColorFile.textColor),
                  )),
                ),
                const SizedBox(
                  width: 20,
                ),
                Container(
                  height: 58,
                  width: 40,
                  decoration: BoxDecoration(
                    color: ColorFile.editPageContainerColor,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Center(
                      child: Text(
                    "0.6",
                    style: TextStyle(color: ColorFile.textColor),
                  )),
                ),
                const SizedBox(
                  width: 20,
                ),
                Container(
                  height: 58,
                  width: 40,
                  decoration: BoxDecoration(
                    color: ColorFile.editPageContainerColor,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Center(
                      child: Text(
                    "0.4",
                    style: TextStyle(color: ColorFile.textColor),
                  )),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 140, left: 70),
            child: Container(
              height: 40,
              width: 200,
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(40)),
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF716E6E)),
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                            title: const Text(
                              'CHOICE MEDIA',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20),
                            ),
                            content: const SingleChildScrollView(
                              child: ListBody(
                                children: <Widget>[
                                  Text("What you want to add image or video?"),
                                ],
                              ),
                            ),
                            actions: <Widget>[
                              Row(
                                children: [
                                  const SizedBox(
                                    width: 30,
                                  ),
                                  ElevatedButton(
                                      onPressed: () {},
                                      child: const Text("video's")),
                                  const SizedBox(
                                    width: 90,
                                  ),
                                  ElevatedButton(
                                      onPressed: () {},
                                      child: const Text("Photos"))
                                ],
                              )
                            ]);
                      },
                    );
                  },
                  child: Text(
                    "+ Add Media",
                    style: TextStyle(color: ColorFile.textColor),
                  )),
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color(0xFFE68A96),
        child: Icon(
          Icons.arrow_forward,
          color: ColorFile.iconColor,
        ),
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const CustomizeImagePage(),
              ));
        },
      ),
    );
  }
}
