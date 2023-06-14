import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:image_picker/image_picker.dart';
import 'package:videomaker/screen/edit_page.dart';
import '../model/color.dart';

class SelectedImagePage extends StatefulWidget {
  const SelectedImagePage({Key? key}) : super(key: key);

  @override
  State<SelectedImagePage> createState() => _SelectedImagePageState();
}

class _SelectedImagePageState extends State<SelectedImagePage> {
  File? _image;
  Future<void> _cropImage() async {
    if (_image == null) return;

    File? cropped = await ImageCropper().cropImage(
      sourcePath: _image!.path,
      aspectRatioPresets: [
        CropAspectRatioPreset.square,
        CropAspectRatioPreset.ratio3x2,
        CropAspectRatioPreset.original,
        CropAspectRatioPreset.ratio4x3,
        CropAspectRatioPreset.ratio16x9
      ],
      androidUiSettings: const AndroidUiSettings(
        toolbarTitle: 'Crop Image',
        toolbarColor: Colors.deepOrange,
        toolbarWidgetColor: Colors.white,
        initAspectRatio: CropAspectRatioPreset.original,
        lockAspectRatio: false,
      ),
    );

    if (cropped != null) {
      setState(() {
        _image = cropped;
      });
    }
  }

  Future getImage(ImageSource source) async {
    try {
      final image = await ImagePicker().pickImage(source: source);
      if (image == null) return;

      final imageTemporary = File(image.path);
      setState(() {
        _image = imageTemporary;
      });
      await _cropImage();
    } catch (e) {
      if (kDebugMode) {
        print("failed to pick image$e");
      }
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
                  child: _image != null
                      ? Image.file(
                          _image!,
                          width: 150,
                          height: 150,
                          fit: BoxFit.cover,
                        )
                      : Image.network(
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
                                          onPressed: () =>
                                              getImage(ImageSource.gallery),
                                          child: const Text("From Gallery")),
                                      const SizedBox(
                                        width: 90,
                                      ),
                                      ElevatedButton(
                                          onPressed: () =>
                                              getImage(ImageSource.camera),
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
