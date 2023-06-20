import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:videomaker/model/color.dart';
import 'package:videomaker/screen/customize_image_page.dart';

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
                padding: EdgeInsets.only(
                    left: MediaQuery.of(context).size.width * 0.17,
                    top: MediaQuery.of(context).size.height * 0.01),
                child: Container(
                    height: MediaQuery.of(context).size.height * 0.450,
                    width: MediaQuery.of(context).size.width * 0.620,
                    decoration: BoxDecoration(
                        color: ColorFile.iconColor,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.white, width: 1.5)),
                    child: const Image(
                      image: AssetImage("assets/homePage4.png"),
                      fit: BoxFit.fill,
                    )),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.02,
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
            padding: EdgeInsets.only(
                left: MediaQuery.of(context).size.width * 0.30,
                top: MediaQuery.of(context).size.height * 0.04),
            child: Text(
              "Use as Template",
              style: TextStyle(
                  color: ColorFile.textColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 18),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
                left: MediaQuery.of(context).size.width * 0.20,
                top: MediaQuery.of(context).size.height * 0.02),
            child: Text(
              "Replace all the clips with your own",
              style: TextStyle(color: ColorFile.textColor, fontSize: 15),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
                left: MediaQuery.of(context).size.width * 0.10,
                top: MediaQuery.of(context).size.height * 0.08),
            child: Row(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * 0.07,
                  width: MediaQuery.of(context).size.width * 0.11,
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
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.02,
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.07,
                  width: MediaQuery.of(context).size.width * 0.11,
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
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.02,
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.07,
                  width: MediaQuery.of(context).size.width * 0.11,
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
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.02,
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.07,
                  width: MediaQuery.of(context).size.width * 0.11,
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
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.02,
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.07,
                  width: MediaQuery.of(context).size.width * 0.11,
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
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.02,
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.07,
                  width: MediaQuery.of(context).size.width * 0.11,
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
