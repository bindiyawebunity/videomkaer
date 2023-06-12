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
        backgroundColor: ColorFile.backGroundColor,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.close,
              color: Colors.white,
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
                        color: Colors.white,
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
                      icon: const Icon(
                        Icons.save,
                        color: Colors.white,
                        size: 15,
                      )),
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        FontAwesomeIcons.music,
                        color: Colors.white,
                        size: 15,
                      )),
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        FontAwesomeIcons.a,
                        color: Colors.white,
                        size: 15,
                      )),
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.upload,
                        color: Colors.white,
                        size: 15,
                      )),
                ],
              ),
            ],
          ),
          const Padding(
            padding: EdgeInsets.only(left: 170.0, top: 20),
            child: Text(
              "Use as Template",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 18),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 130.0, top: 20),
            child: Text(
              "Replace all the clips with your own",
              style: TextStyle(color: Colors.white),
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
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: const Center(
                      child: Text(
                    "4.8",
                    style: TextStyle(color: Colors.white),
                  )),
                ),
                const SizedBox(
                  width: 20,
                ),
                Container(
                  height: 58,
                  width: 40,
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: const Center(
                      child: Text(
                    "4.8",
                    style: TextStyle(color: Colors.white),
                  )),
                ),
                const SizedBox(
                  width: 20,
                ),
                Container(
                  height: 58,
                  width: 40,
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: const Center(
                      child: Text(
                    "4.8",
                    style: TextStyle(color: Colors.white),
                  )),
                ),
                const SizedBox(
                  width: 20,
                ),
                Container(
                  height: 58,
                  width: 40,
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: const Center(
                      child: Text(
                    "4.8",
                    style: TextStyle(color: Colors.white),
                  )),
                ),
                const SizedBox(
                  width: 20,
                ),
                Container(
                  height: 58,
                  width: 40,
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: const Center(
                      child: Text(
                    "4.8",
                    style: TextStyle(color: Colors.white),
                  )),
                ),
                const SizedBox(
                  width: 20,
                ),
                Container(
                  height: 58,
                  width: 40,
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: const Center(
                      child: Text(
                    "4.8",
                    style: TextStyle(color: Colors.white),
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
                  onPressed: () {},
                  child: const Text(
                    "+ Add Media",
                    style: TextStyle(color: Colors.white),
                  )),
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color(0xFFE68A96),
        child: const Icon(
          Icons.arrow_forward,
          color: Colors.white,
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
