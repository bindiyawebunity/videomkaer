import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:gallery_saver/gallery_saver.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';
import 'package:videomaker/screen/save_video_page.dart';
import '../model/color.dart';

class EditPage extends StatefulWidget {
  final XFile image;
  const EditPage({Key? key, required this.image}) : super(key: key);

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
      [
        0.95,
        0,
        0,
        0,
        0,
        0,
        0.94,
        0,
        0,
        0,
        0.94,
        0,
        0,
        1,
        0,
        0,
        0,
        0,
        1,
        0,
      ],
    ),
    const ColorFilter.matrix(
      [
        0.78,
        0,
        0,
        0,
        0,
        0,
        0.78,
        0,
        0,
        0,
        0,
        0,
        0.78,
        0,
        0,
        0,
        0,
        0,
        1,
        0,
      ],
    ),
    const ColorFilter.matrix(
      [
        0.98,
        0,
        0,
        0,
        0,
        0,
        0.78,
        0,
        0,
        0,
        0.78,
        0,
        0,
        1,
        0,
        0,
        0,
        0,
        1,
        0,
      ],
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
        0,
        0,
        1,
        0,
        0,
      ],
    ),
    const ColorFilter.matrix(
      [
        0.5,
        0,
        0,
        0,
        0,
        0,
        0.5,
        0,
        0,
        0,
        0,
        0,
        0.5,
        0,
        0,
        0,
        0,
        0,
        1,
        0,
      ],
    ),
    const ColorFilter.matrix(
      [
        1.5,
        0,
        0,
        0,
        0,
        0,
        1.5,
        0,
        0,
        0,
        0,
        0,
        1.5,
        0,
        0,
        0,
        0,
        0,
        1,
        0,
      ],
    ),
    const ColorFilter.matrix(
      [
        1,
        0,
        0,
        0,
        0,
        0,
        1,
        0,
        0,
        0,
        0,
        0,
        1,
        0,
        0,
        0,
        0,
        0,
        1,
        0,
      ],
    ),
    const ColorFilter.matrix(
      [
        0.8,
        0,
        0,
        0,
        0,
        0,
        1,
        0,
        0,
        0,
        0,
        0,
        1,
        0,
        0,
        0,
        0,
        0,
        1,
        0,
      ],
    ),
    const ColorFilter.matrix(
      [
        1,
        0,
        0,
        0,
        0,
        0,
        0.5,
        0,
        0,
        0,
        0,
        0,
        2,
        0,
        0,
        0,
        0,
        0,
        1,
        0,
      ],
    ),
    const ColorFilter.matrix(
      [
        1,
        0,
        0,
        0,
        0,
        0,
        1,
        0,
        0,
        0,
        0,
        0,
        2,
        0,
        0,
        0,
        0,
        0,
        1,
        0,
      ],
    ),
    const ColorFilter.matrix(
      [
        0.5,
        0,
        0,
        0,
        0,
        0,
        0.5,
        0,
        0,
        0,
        0,
        0,
        2,
        0,
        0,
        0,
        0,
        0,
        1,
        0,
      ],
    ),
    const ColorFilter.matrix(
      [
        1.2,
        0,
        0,
        0,
        0,
        0,
        0.8,
        0,
        0,
        0,
        0,
        0,
        1,
        0,
        0,
        0,
        0,
        0,
        1,
        0,
      ],
    ),
    const ColorFilter.matrix(
      [
        1.1,
        0,
        0,
        0,
        0,
        0,
        1.1,
        0,
        0,
        0,
        0,
        0,
        1.1,
        0,
        0,
        0,
        0,
        0,
        1,
        0,
      ],
    ),
    const ColorFilter.matrix(
      [
        1,
        0,
        0,
        0,
        0,
        0,
        0.8,
        0,
        0,
        0,
        0,
        0,
        1.5,
        0,
        0,
        0,
        0,
        0,
        1,
        0,
      ],
    ),
    const ColorFilter.matrix(
      [
        0.5,
        0,
        0,
        0,
        0,
        0,
        1.5,
        0,
        0,
        0,
        0,
        0,
        0.5,
        0,
        0,
        0,
        0,
        0,
        1,
        0,
      ],
    ),
    const ColorFilter.matrix(
      [
        0.4,
        0.8,
        0.4,
        0,
        0,
        0.4,
        0.8,
        0.4,
        0,
        0,
        0.4,
        0.8,
        0.4,
        0,
        0,
        0,
        0,
        1,
        0,
        0,
      ],
    ),
    const ColorFilter.matrix(
      [
        0.3,
        0.6,
        0.3,
        0,
        0,
        0.3,
        0.6,
        0.3,
        0,
        0,
        0.3,
        0.6,
        0.3,
        0,
        0,
        0,
        0,
        1,
        0,
        0,
      ],
    ),
    const ColorFilter.matrix(
      [
        0.2,
        0.4,
        0.2,
        0,
        0,
        0.2,
        0.4,
        0.2,
        0,
        0,
        0.2,
        0.4,
        0.2,
        0,
        0,
        0,
        0,
        1,
        0,
        0,
      ],
    ),
    const ColorFilter.matrix(
      [
        0.1,
        0.2,
        0.1,
        0,
        0,
        0.1,
        0.2,
        0.1,
        0,
        0,
        0.1,
        0.2,
        0.1,
        0,
        0,
        0,
        0,
        1,
        0,
        0,
      ],
    ),
    const ColorFilter.matrix(
      [
        0.75,
        0,
        0,
        0,
        0,
        0,
        0.75,
        0,
        0,
        0,
        0,
        0,
        0.75,
        0,
        0,
        0,
        0,
        0,
        1,
        0,
      ],
    ),
    const ColorFilter.matrix(
      [
        0.5,
        0,
        0,
        0,
        0,
        0,
        0.5,
        0,
        0,
        0,
        0,
        0,
        0.5,
        0,
        0,
        0,
        0,
        0,
        1,
        0,
      ],
    ),
    const ColorFilter.matrix(
      [
        1.5,
        0,
        0,
        0,
        0,
        0,
        1.5,
        0,
        0,
        0,
        0,
        0,
        1.5,
        0,
        0,
        0,
        0,
        0,
        1,
        0,
      ],
    ),
    const ColorFilter.matrix(
      [
        1,
        0,
        0,
        0,
        0,
        0,
        1,
        0,
        0,
        0,
        0,
        0,
        1,
        0,
        0,
        0,
        0,
        0,
        1,
        0,
      ],
    ),
    const ColorFilter.matrix(
      [
        0.8,
        0,
        0,
        0,
        0,
        0,
        1,
        0,
        0,
        0,
        0,
        0,
        1,
        0,
        0,
        0,
        0,
        0,
        1,
        0,
      ],
    ),
  ];

  int a = 0, selectedOption = 0;
  dynamic selectedFilter;
  dynamic bkImage;
  dynamic assetImage1;
  dynamic width;
  File file = File("assets/homePage2.png");

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
                  GallerySaver.saveImage(widget.image.path).then((value) {
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
        body: Column(
          children: [
            Container(
              height: 300,
              width: MediaQuery.of(context).size.width,
              decoration: assetImage1 == null
                  ? BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: FileImage(File(widget.image.path))))
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
                          ? Image.file(
                              File(widget.image.path),
                            )
                          : ColorFiltered(
                              colorFilter: selectedFilter,
                              child: Image.file(
                                File(widget.image.path),
                              ),
                            )),
                ),
              ),
            ),
            const Spacer(),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.15,
            ),
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
              height: 90,
              child: Container(
                color: Colors.black12,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    tabsImplement(Icons.filter_frames_outlined, 0, "Frame"),
                    const SizedBox(
                      width: 5,
                    ),
                    tabsImplement(Icons.filter, 1, "Filter"),
                    const SizedBox(
                      width: 5,
                    ),
                    tabsImplement(Icons.text_fields, 2, "Text"),
                    tabsImplement(Icons.crop, 3, "Crop"),
                    tabsImplement(Icons.document_scanner_outlined, a, "Canvas"),
                  ],
                ),
              ),
            ),
          ],
        ));
  }

  Widget tabsImplement(IconData iconss, int a, String text) {
    return TextButton(
      onPressed: () {
        setState(() {
          selectedOption = a;
        });
      },
      child: Column(
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
                setState(() {
                  selectedOption = a;
                });
              },
              icon: Icon(
                iconss,
                color: ColorFile.iconColor,
              ),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.010,
          ),
          Text(
            text,
            style: TextStyle(color: ColorFile.textColor, fontSize: 12),
          ),
        ],
      ),
    );
  }

  Widget frameOnImage() {
    return SizedBox(
      height: 50,
      child: ListView.builder(
        itemBuilder: (context, index) {
          return applyFrame(frame[index], index, File(widget.image.path));
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
          return imageContainer(
              filterList[index], index, File(widget.image.path));
        },
        itemCount: filterList.length,
        scrollDirection: Axis.horizontal,
      ),
    );
  }

  Widget applyFrame(String image1, int i, File file) {
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

  Widget imageContainer(ColorFilter filter, int index, File file) {
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
                height: 50,
                width: 70,
                child: ColorFiltered(
                  colorFilter: filter,
                  child: Image.asset(
                    "assets/myImage.png",
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
