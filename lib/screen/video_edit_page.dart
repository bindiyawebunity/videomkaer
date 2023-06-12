import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:videomaker/screen/save_video_page.dart';

import '../model/color.dart';

class VideoEditPage extends StatefulWidget {
  const VideoEditPage({Key? key}) : super(key: key);

  @override
  State<VideoEditPage> createState() => _VideoEditPageState();
}

class _VideoEditPageState extends State<VideoEditPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorFile.backGroundColor,
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
        title: Center(
            child: Text(
          "Edit",
          style: TextStyle(
              color: ColorFile.textColor,
              fontSize: 18,
              fontWeight: FontWeight.bold),
        )),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const SaveVideoPage(),
                    ));
              },
              icon: const Icon(
                Icons.check,
                color: Colors.white,
              )),
          const SizedBox(
            width: 20,
          ),
        ],
      ),
      body: Column(
        children: [
          Stack(
            children: [
              const SizedBox(
                height: 400,
                width: double.infinity,
                child: Image(
                  image: AssetImage("assets/homePage4.png"),
                  fit: BoxFit.cover,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 360.0),
                child: IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.play_arrow_outlined,
                      color: Colors.white),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 360.0, left: 450),
                child: IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.qr_code_scanner_outlined,
                      color: Colors.white),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 50.0, top: 300),
            child: Row(
              children: [
                Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.grey),
                  child: const Icon(
                    Icons.filter,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(
                  width: 30,
                ),
                Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.grey),
                  child: const Icon(
                    Icons.qr_code_scanner,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(
                  width: 30,
                ),
                Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.grey),
                  child: const Icon(
                    FontAwesomeIcons.textHeight,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(
                  width: 30,
                ),
                Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.grey),
                  child: const Icon(
                    Icons.crop,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(
                  width: 30,
                ),
                Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.grey),
                  child: const Icon(
                    Icons.color_lens,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(
                  width: 30,
                ),
                Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.grey),
                  child: const Icon(
                    Icons.speed,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(
                  width: 30,
                ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 55.0, top: 10),
            child: Row(
              children: [
                Text(
                  "filter",
                  style: TextStyle(color: Colors.white, fontSize: 12),
                ),
                SizedBox(
                  width: 40,
                ),
                Text(
                  "Canvas",
                  style: TextStyle(color: Colors.white, fontSize: 12),
                ),
                SizedBox(
                  width: 35,
                ),
                Text(
                  "Text",
                  style: TextStyle(color: Colors.white, fontSize: 12),
                ),
                SizedBox(
                  width: 45,
                ),
                Text(
                  "Crop",
                  style: TextStyle(color: Colors.white, fontSize: 12),
                ),
                SizedBox(
                  width: 45,
                ),
                Text(
                  "Color",
                  style: TextStyle(color: Colors.white, fontSize: 12),
                ),
                SizedBox(
                  width: 40,
                ),
                Text(
                  "Speed",
                  style: TextStyle(color: Colors.white, fontSize: 12),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
