import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:videomaker/screen/edit_page.dart';
import 'package:videomaker/screen/selected_image.dart';
import '../model/color.dart';

class CustomizeImagePage extends StatefulWidget {
  const CustomizeImagePage({Key? key}) : super(key: key);

  @override
  State<CustomizeImagePage> createState() => _CustomizeImagePageState();
}

class _CustomizeImagePageState extends State<CustomizeImagePage> {
  void getImage(ImageSource source) async {
    final XFile? pickedFile = await ImagePicker().pickImage(
      source: source,
    );

    if (pickedFile == null) return;
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (_) => EditPage(image: pickedFile)));
  }

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
            "Select Photo",
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
                        builder: (context) => const SelectedImagePage(),
                      ));
                },
                icon: Icon(
                  Icons.check,
                  color: ColorFile.iconColor,
                )),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.03,
            ),
          ],
        ),
        body: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.05,
              width: MediaQuery.of(context).size.width * 0.10,
              decoration: BoxDecoration(
                color: ColorFile.editPageContainerColor,
                borderRadius: BorderRadius.circular(5),
              ),
              child: IconButton(
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
                                Text(""),
                              ],
                            ),
                          ),
                          actions: <Widget>[
                            Row(
                              children: [
                                SizedBox(
                                  width:
                                      MediaQuery.of(context).size.height * 0.03,
                                ),
                                ElevatedButton(
                                    onPressed: () =>
                                        getImage(ImageSource.gallery),
                                    child: const Text("From Gallery")),
                                SizedBox(
                                  width:
                                      MediaQuery.of(context).size.height * 0.03,
                                ),
                                ElevatedButton(
                                    onPressed: () {},
                                    child: const Text("From Camera"))
                              ],
                            )
                          ]);
                    },
                  );
                },
                icon: Icon(
                  Icons.crop,
                  color: ColorFile.iconColor,
                ),
              ),
            ),
          ],
        ));
  }
}
