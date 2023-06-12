import 'package:flutter/material.dart';
import 'package:videomaker/screen/home_page.dart';
import '../model/color.dart';

class SaveVideoPage extends StatefulWidget {
  const SaveVideoPage({Key? key}) : super(key: key);

  @override
  State<SaveVideoPage> createState() => _SaveVideoPageState();
}

class _SaveVideoPageState extends State<SaveVideoPage> {
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
            icon: Icon(
              Icons.close,
              color: ColorFile.iconColor,
            )),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const HomePage(),
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
          const SizedBox(
              height: 500,
              width: double.infinity,
              child: Image(
                image: AssetImage("assets/savePage.png"),
                fit: BoxFit.cover,
              )),
          Padding(
            padding: const EdgeInsets.only(left: 90.0, top: 30),
            child: Row(
              children: [
                Container(
                  height: 30,
                  width: 30,
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(30)),
                  child: const Image(
                    image: AssetImage("assets/Vector.png"),
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(
                  width: 8,
                ),
                Text(
                  "Video Successfully save to Gallery",
                  style: TextStyle(color: ColorFile.textColor, fontSize: 17),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 60.0, top: 200),
            child: Row(
              children: [
                Container(
                  height: 38,
                  width: 136,
                  decoration: BoxDecoration(
                    color: ColorFile.editPageContainerColor,
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: Center(
                    child: Text(
                      "Share reel",
                      style: TextStyle(color: ColorFile.textColor),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 50,
                ),
                Container(
                  height: 38,
                  width: 136,
                  decoration: BoxDecoration(
                    color: ColorFile.editPageContainerColor,
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: Center(
                    child: Text(
                      "Delete reel",
                      style: TextStyle(color: ColorFile.textColor),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
