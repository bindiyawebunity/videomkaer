import 'dart:ui' as ui;
import 'package:flutter/material.dart';
import 'package:gallery_saver/gallery_saver.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';
import 'package:videomaker/screen/save_video_page.dart';
import 'package:videomaker/screen/test_dart.dart';
import '../model/color.dart';

class EditPage1 extends StatefulWidget {
  final XFile image;
  const EditPage1({Key? key, required this.image}) : super(key: key);

  @override
  State<EditPage1> createState() => _EditPage1State();
}

class _EditPage1State extends State<EditPage1> {
  List<String> frame = [
    "assets/2.png",
    "assets/3.png",
    "assets/4.png",
    "assets/5.png",
    "assets/6.png",
    "assets/7.png",
    "assets/8.png",
    "assets/9.png",
    "assets/10.png",
    "assets/11.png",
  ];

  List<ColorFilter> filterList = [
    const ColorFilter.matrix(
      [
        0.95, 0, 0, 0, 0, 0, 0.94, 0, 0, 0, 0.94, 0, 0, 1, 0, 0, 0, 0, 1, 0,
      ],
    ),
    // Add other color filters here
  ];

  int selectedOption = 0;
  ColorFilter? selectedFilter;
  File? file;
  late final String croppedImagePath;

  @override
  void initState() {
    super.initState();
    file = File(widget.image.path);
  }

  Future<void> _saveImage() async {
    try {
      await GallerySaver.saveImage(croppedImagePath);
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Image saved to gallery')),
      );
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Failed to save image')),
      );
    }

    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const SaveVideoPage(),
      ),
    );
  }

  Widget frameOnImage() {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: frame.length,
      itemBuilder: (BuildContext context, int index) {
        return GestureDetector(
          onTap: () {
            setState(() {
              file = File(frame[index]);
              selectedOption = 0;
            });
          },
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(frame[index]),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  Widget filterColorOptionContainer(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: filterList.length,
      itemBuilder: (BuildContext context, int index) {
        return GestureDetector(
          onTap: () {
            setState(() {
              selectedFilter = filterList[index];
              selectedOption = 1;
            });
          },
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 50,
              width: 50,
              color: Colors.transparent,
              child: ColorFiltered(
                colorFilter: filterList[index],
                child: Image.file(
                  file!,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  Future<void> _cropImage() async {
    final croppedImage = await ImageCropper().cropImage(
      sourcePath: file!.path,
      aspectRatio: const CropAspectRatio(ratioX: 1, ratioY: 1),
      compressQuality: 100,
      maxHeight: 1000,
      maxWidth: 1000,
      compressFormat: ImageCompressFormat.png,
      androidUiSettings: const AndroidUiSettings(
        toolbarTitle: 'Crop Image',
        toolbarColor: Colors.deepOrange,
        toolbarWidgetColor: Colors.white,
        initAspectRatio: CropAspectRatioPreset.original,
        lockAspectRatio: false,
      ),
    );

    if (croppedImage != null) {
      setState(() {
        file = croppedImage;
        croppedImagePath = croppedImage.path;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Image Editor'),
        actions: [
          IconButton(
            icon: const Icon(Icons.save),
            onPressed: _saveImage,
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            flex: 3,
            child: Container(
              width: double.infinity,
              child: selectedOption == 0
                  ? Image.asset(
                frame[selectedOption],
                fit: BoxFit.cover,
              )
                  : ColorFiltered(
                colorFilter: selectedFilter!,
                child: Image.file(
                  file!,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: selectedOption == 0
                ? frameOnImage()
                : filterColorOptionContainer(context),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _cropImage,
        child: const Icon(Icons.crop),
      ),
    );
  }
}
