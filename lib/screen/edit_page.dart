import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:gallery_saver/gallery_saver.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';
import 'package:videomaker/screen/save_video_page.dart';
import '../model/color.dart';
import 'dart:ui';

class EditPage extends StatefulWidget {
  final File file;
  const EditPage({
    Key? key,
    required this.file,
  }) : super(key: key);

  @override
  State<EditPage> createState() => _EditPageState();
}

class _EditPageState extends State<EditPage> {
  List<String> frame = [
    "assets/frame_1.jpg",
    "assets/frame_2.jpg",
    "assets/frame_3.jpg",
    "assets/frame_4.jpg",
    "assets/frame_5.jpg",
    "assets/frame_6.webp",
    "assets/frame_7.jpg",
    "assets/frame_8.jpg",
    "assets/frame_9.jpg",
    "assets/frame_10.jpg",
  ];

  List<ColorFilter> filterList = [
    const ColorFilter.matrix(
      [0.95, 0, 0, 0, 0, 0, 0.94, 0, 0, 0, 0.94, 0, 0, 1, 0],
    ),
    const ColorFilter.matrix(
      [0.78, 0, 0, 0, 0, 0, 0.78, 0, 0, 0, 0, 0.78, 0, 0, 0, 0, 1, 0],
    ),
    const ColorFilter.matrix(
      [0.98, 0, 0, 0, 0, 0, 0.78, 0, 0, 0, 0.78, 0, 0, 1, 0],
    ),
    const ColorFilter.matrix(
      [
        0.25,
        0.5,
        0.25,
        0,
        0,
        0.25,
        0.5,
        0.25,
        0,
        0,
        0.25,
        0.5,
        0.25,
        0,
        0,
        1,
        0
      ],
    ),
    const ColorFilter.matrix(
      [0.5, 0, 0, 0, 0, 0, 0.5, 0, 0, 0, 0, 0, 0.5, 0, 0, 0, 0, 0, 1, 0],
    ),
    const ColorFilter.matrix(
      [1.5, 0, 0, 0, 0, 0, 1.5, 0, 0, 0, 0, 0, 1.5, 0, 0, 0, 0, 0, 1, 0],
    ),
    const ColorFilter.matrix(
      [1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0],
    ),
  ];

  File? _image;

  double contrast = 1.0;
  double shadow = 0.0;
  double brightness = 0.0;

  Future<void> _cropImage() async {
    if (_image == null) return;

    File? cropped = (await ImageCropper().cropImage(
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
    ));

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

  int a = 0, selectedOption = 0;
  dynamic selectedFilter;
  dynamic bkImage;
  dynamic assetImage1;
  dynamic width;
  File file = File(
      "https://github.com/bindiyawebunity/videomkaer/blob/663eaf927f3d718041f41ca7fb4de45488bf9fef/assets/homePage.png");

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
              onPressed: () async {
                GallerySaver.saveImage(widget.file.path).then((value) {
                  ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text("photo saved")));
                });

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
          )
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(MediaQuery.of(context).size.height * 0.01),
        child: Column(
          children: [
            Container(
              height: 300,
              width: MediaQuery.of(context).size.width,
              decoration: assetImage1 == null
                  ? BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.fill, image: FileImage(widget.file)))
                  : BoxDecoration(
                      image: DecorationImage(image: AssetImage(assetImage1))),
              child: ClipRRect(
                child: SizedBox(
                  child: BackdropFilter(
                      filter: ImageFilter.blur(
                        sigmaX: 1.0,
                        sigmaY: 1.0,
                      ),
                      child: selectedFilter == null
                          ? Image.file(widget.file)
                          : ColorFiltered(
                              colorFilter: selectedFilter,
                              child: Image.file(widget.file),
                            )),
                ),
              ),
            ),
            const Spacer(),
            SizedBox(
              height: 70,
              child: LayoutBuilder(
                builder: (context, constraints) {
                  if (selectedOption == 0) {
                    return frameOnImage();
                  }
                  if (selectedOption == 1) {
                    return filterColorOptionContainer(context);
                  } else {
                    return const Text("Pending");
                  }
                },
              ),
            ),
            SizedBox(
              height: 50,
              child: Container(
                color: Colors.black12,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    tabsImplement(Icons.filter_frames_outlined, 0),
                    tabsImplement(Icons.filter, 1),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget tabsImplement(IconData iconss, int a) {
    return IconButton(
        onPressed: () {
          selectedOption = a;
        },
        icon: Icon(
          iconss,
          color: ColorFile.iconColor,
          size: 25,
        ));
  }

  Widget frameOnImage() {
    return SizedBox(
      height: 50,
      child: ListView.builder(
        itemBuilder: (context, index) {
          return applyFrame(frame[index], index);
        },
        itemCount: frame.length,
        scrollDirection: Axis.horizontal,
      ),
    );
  }

  Widget filterColorOptionContainer(BuildContext context) {
    return SizedBox(
      height: 50,
      child: ListView.builder(
        itemBuilder: (context, index) {
          return imageContainer(filterList[index], index);
        },
        itemCount: filterList.length,
        scrollDirection: Axis.horizontal,
      ),
    );
  }

  Widget applyFrame(String image1, int i) {
    return TextButton(
      onPressed: () {
        setState(() {
          assetImage1 = image1;
        });
      },
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage(image1)),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Image.asset("assets/white_page.jpg"),
        ),
      ),
    );
  }

  Widget imageContainer(ColorFilter filter, int index) {
    return InkWell(
      onTap: () {
        setState(() {
          selectedFilter = filter;
        });
      },
      child: Container(
        padding: const EdgeInsets.all(8),
        child: Column(
          children: [
            SizedBox(
              height: 40,
              width: 70,
              child: ColorFiltered(
                colorFilter: filter,
                child: Image.asset(
                  "assets/myImage.png",
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Text(
              "Filter$index",
              style: const TextStyle(color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
