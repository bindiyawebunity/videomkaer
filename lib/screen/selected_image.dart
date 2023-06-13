import 'dart:io';
import 'dart:typed_data';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:videomaker/screen/edit_page.dart';

import '../model/color.dart';

class SelectedImagePage extends StatefulWidget {
  const SelectedImagePage({Key? key}) : super(key: key);

  @override
  State<SelectedImagePage> createState() => _SelectedImagePageState();
}

class _SelectedImagePageState extends State<SelectedImagePage> {
  Uint8List webImage = Uint8List(8);

  // Future getImage(ImageSource source) async {
  //   try {
  //
  //     if (kIsWeb) return;
  //       final image = await ImagePicker().pickImage(source: source);
  //
  //
  //     final imageTemporary = File(image?.path);
  //     setState(() {
  //       this._image = imageTemporary;
  //     });
  //   } catch (e) {
  //     print("faild to pick image$e");
  //   }
  // }

  Future<void> _pickImage() async {
    if (!kIsWeb) {
      final ImagePicker picker = ImagePicker();
      XFile? image = await picker.pickImage(source: ImageSource.gallery);
      if (image != null) {
        var selected = File(image.path);
        setState(() {});
      } else if (kIsWeb) {
        final ImagePicker picker = ImagePicker();
        XFile? image = await picker.pickImage(source: ImageSource.gallery);
        if (image != null) {
          var f = await image.readAsBytes();
          webImage = f;
        }
      } else {
        print("no image has been picked");
      }
    } else {
      print("somthing went wrong");
    }
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
      ),
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                  height: 150,
                  width: 150,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Image.network(
                    "https://iso.500px.com/wp-content/uploads/2016/03/stock-photo-142984111.jpg",
                    fit: BoxFit.cover,
                  )),
              Padding(
                padding: const EdgeInsets.only(top: 120.0),
                child: Container(
                  height: 40,
                  width: 150,
                  decoration: BoxDecoration(
                      color: const Color(0xFF040404).withOpacity(0.5),
                      borderRadius: const BorderRadius.only(
                        bottomRight: Radius.circular(15),
                        bottomLeft: Radius.circular(15),
                      )),
                  child: Center(
                    child: TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const EditPage(),
                              ));
                        },
                        child: Text(
                          "Edit",
                          style: TextStyle(color: ColorFile.textColor),
                        )),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 200, left: 70),
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
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20),
                                ),
                                content: const SingleChildScrollView(
                                  child: ListBody(
                                    children: <Widget>[
                                      Text(
                                          "What you want to add image or video?"),
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
                                          onPressed: () => _pickImage,
                                          child: const Text("From Gallery")),
                                      const SizedBox(
                                        width: 90,
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
                      child: Text(
                        "+ Add Media",
                        style: TextStyle(color: ColorFile.textColor),
                      )),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
