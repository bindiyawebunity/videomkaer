import 'dart:ui';
import 'package:flutter/material.dart';

import '../model/color.dart';

class BlurImage extends StatefulWidget {
  const BlurImage({Key? key}) : super(key: key);

  @override
  State<BlurImage> createState() => _BlurImageState();
}

class _BlurImageState extends State<BlurImage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ColorFile.backGroundColor,
        body: Center(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          ImageFiltered(
              imageFilter: ImageFilter.blur(sigmaY: 2, sigmaX: 2),
              child: Image.asset("assets/homePage.png"))
        ])));
  }
}
