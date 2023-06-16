import 'package:flutter/material.dart';

import '../model/color.dart';

class ColorEffect extends StatefulWidget {
  const ColorEffect({Key? key}) : super(key: key);

  @override
  State<ColorEffect> createState() => _ColorEffectState();
}

class _ColorEffectState extends State<ColorEffect> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ColorFile.backGroundColor,
        body: Center(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          //Color your asset here
          ColorFiltered(
              colorFilter:
                  const ColorFilter.mode(Colors.yellow, BlendMode.saturation),
              child: Image.asset("assets/homePage.png"))
        ])));
  }
}
