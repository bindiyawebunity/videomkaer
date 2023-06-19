
import 'package:flutter/material.dart';
import 'package:videomaker/screen/home_page.dart';
import '../model/color.dart';

class SaveVideoPage extends StatefulWidget {
  const SaveVideoPage({Key? key, }) : super(key: key);

  @override
  State<SaveVideoPage> createState() => _SaveVideoPageState();
}

class _SaveVideoPageState extends State<SaveVideoPage> {
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
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.02,
          ),
        ],
      ),
      body: Column(
        children: [
          SizedBox(
              height: MediaQuery.of(context).size.height * 0.550,
              width: double.infinity,
              child: const Image(
                image: AssetImage("assets/savePage.png"),
                fit: BoxFit.cover,
              )),
          Padding(
            padding: EdgeInsets.only(
                left: MediaQuery.of(context).size.width * 0.10,
                top: MediaQuery.of(context).size.height * 0.03),
            child: Row(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * 0.03,
                  width: MediaQuery.of(context).size.width * 0.06,
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
            padding: EdgeInsets.only(
                left: MediaQuery.of(context).size.width * 0.08,
                top: MediaQuery.of(context).size.height * 0.12),
            child: Row(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width * 0.4,
                  height: MediaQuery.of(context).size.height * 0.05,
                  decoration: BoxDecoration(
                    color: ColorFile.editPageContainerColor,
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      "Share reel",
                      style: TextStyle(color: ColorFile.textColor),
                    ),
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.06,
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.4,
                  height: MediaQuery.of(context).size.height * 0.05,
                  decoration: BoxDecoration(
                    color: ColorFile.editPageContainerColor,
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: TextButton(
                    onPressed: () {},
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
