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
    return  Scaffold(
      backgroundColor: ColorFile.backGroundColor,
      appBar: AppBar(

      ),
    );
  }
}
