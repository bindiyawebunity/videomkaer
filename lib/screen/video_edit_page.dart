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
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.close,
              color: ColorFile.iconColor,
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
              icon: Icon(
                Icons.check,
                color: ColorFile.iconColor,
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
                  icon: Icon(Icons.play_arrow_outlined,
                      color: ColorFile.iconColor),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 360.0, left: 450),
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.qr_code_scanner_outlined,
                      color: ColorFile.iconColor),
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
                      color: ColorFile.editPageContainerColor),
                  child: Icon(
                    Icons.filter,
                    color: ColorFile.iconColor,
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
                      color: ColorFile.editPageContainerColor),
                  child: Icon(
                    Icons.qr_code_scanner,
                    color: ColorFile.iconColor,
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
                      color: ColorFile.editPageContainerColor),
                  child: Icon(
                    FontAwesomeIcons.textHeight,
                    color: ColorFile.iconColor,
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
                      color: ColorFile.editPageContainerColor),
                  child: Icon(
                    Icons.crop,
                    color: ColorFile.iconColor,
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
                      color: ColorFile.editPageContainerColor),
                  child: Icon(
                    Icons.color_lens,
                    color: ColorFile.iconColor,
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
                      color: ColorFile.editPageContainerColor),
                  child: Icon(
                    Icons.speed,
                    color: ColorFile.iconColor,
                  ),
                ),
                const SizedBox(
                  width: 30,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 55.0, top: 10),
            child: Row(
              children: [
                Text(
                  "filter",
                  style: TextStyle(color: ColorFile.textColor, fontSize: 12),
                ),
                const SizedBox(
                  width: 40,
                ),
                Text(
                  "Canvas",
                  style: TextStyle(color: ColorFile.textColor, fontSize: 12),
                ),
                const SizedBox(
                  width: 35,
                ),
                Text(
                  "Text",
                  style: TextStyle(color: ColorFile.textColor, fontSize: 12),
                ),
                const SizedBox(
                  width: 45,
                ),
                Text(
                  "Crop",
                  style: TextStyle(color: ColorFile.textColor, fontSize: 12),
                ),
                const SizedBox(
                  width: 45,
                ),
                Text(
                  "Color",
                  style: TextStyle(color: ColorFile.textColor, fontSize: 12),
                ),
                const SizedBox(
                  width: 40,
                ),
                Text(
                  "Speed",
                  style: TextStyle(color: ColorFile.textColor, fontSize: 12),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
