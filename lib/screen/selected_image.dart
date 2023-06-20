import 'dart:ui';
import 'package:flutter/material.dart';
import '../model/color.dart';

class SelectedImagePage extends StatefulWidget {
  const SelectedImagePage({Key? key}) : super(key: key);

  @override
  State<SelectedImagePage> createState() => _SelectedImagePageState();
}

class _SelectedImagePageState extends State<SelectedImagePage> {
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
          Container(
              height: MediaQuery.of(context).size.height * 0.200,
              width: MediaQuery.of(context).size.width * 0.700,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
              ),
              child: ImageFiltered(
                imageFilter: ImageFilter.matrix(Matrix4.rotationY(1).storage),
                child: Image.network(
                  "https://iso.500px.com/wp-content/uploads/2016/03/stock-photo-142984111.jpg",
                  fit: BoxFit.cover,
                  scale: 3,
                ),
              )),
        ],
      ),
    );
  }
}
