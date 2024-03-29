import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_editor_plus/image_editor_plus.dart';

class ImageEditorExample extends StatefulWidget {
  const ImageEditorExample({
    super.key,
  });

  @override
  createState() => _ImageEditorExampleState();
}

class _ImageEditorExampleState extends State<ImageEditorExample> {
  Uint8List? imageData;

  @override
  void initState() {
    super.initState();
    loadAsset("assets/myImage.png");
  }

  void loadAsset(String name) async {
    var data = await rootBundle.load('assets/$name');
    setState(() => imageData = data.buffer.asUint8List());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ImageEditor"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (imageData != null) Image.memory(imageData!),
            ElevatedButton(
              child: const Text("Single image editor"),
              onPressed: () async {
                var editedImage = await Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ImageEditor(
                      image: imageData,
                      allowCamera: true,
                      allowGallery: true,
                    ),
                  ),
                );

                // replace with edited image
                if (editedImage != null) {
                  imageData = editedImage;
                  setState(() {});
                }
              },
            ),
            ElevatedButton(
              child: const Text("Multiple image editor"),
              onPressed: () async {
                var editedImage = await Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ImageEditor(
                      images: [
                        imageData,
                      ],
                      allowMultiple: true,
                      allowCamera: true,
                      allowGallery: true,
                    ),
                  ),
                );

                // replace with edited image
                if (editedImage != null) {
                  imageData = editedImage;
                  setState(() {});
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
