import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:multiple_images_picker/multiple_images_picker.dart';
import 'package:videomaker/screen/edit_page.dart';
import 'package:videomaker/screen/selected_image.dart';
import '../model/color.dart';
import 'dart:io';

class CustomizeImagePage extends StatefulWidget {
  const CustomizeImagePage({Key? key}) : super(key: key);

  @override
  State<CustomizeImagePage> createState() => _CustomizeImagePageState();
}

class _CustomizeImagePageState extends State<CustomizeImagePage> {
  captureImage(ImageSource imageSource) async {
    File pickedFile =
        (await ImagePicker().pickImage(source: ImageSource.gallery)) as File;
    if (pickedFile.path.isNotEmpty) {
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (_) => EditPage(file: pickedFile),
          ));
    }
  }

  List<Asset> images = <Asset>[];
  Future pickImage() async {
    List<Asset> resultList = <Asset>[];
    try {
      resultList = await MultipleImagesPicker.pickImages(
          maxImages: 300, selectedAssets: images, enableCamera: true);
    } catch (e) {
      if (kDebugMode) {
        print("failed to pick image$e");
      }
    }
    setState(() {
      images = resultList;
    });
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
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8),
              child: GridView.count(
                  crossAxisCount: 3,
                  children: List.generate(images.length, (index) {
                    Asset asset = images[index];
                    return AssetThumb(asset: asset, width: 300, height: 300);
                  })),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: MediaQuery.of(context).size.height * 0.80,
            ),
            child: IconButton(
                onPressed: () {
                  pickImage();
                },
                icon: Icon(
                  Icons.image,
                  size: 25,
                  color: ColorFile.iconColor,
                )),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color(0xFFE68A96),
        child: Icon(
          Icons.add,
          color: ColorFile.iconColor,
        ),
        onPressed: () {
          captureImage(ImageSource.gallery);
        },
      ),
    );
  }
}
