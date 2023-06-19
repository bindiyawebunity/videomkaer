import 'package:flutter/material.dart';

class SelectedImageWidget extends StatefulWidget {
  final String url;
  final bool isSelected;
  const SelectedImageWidget(
      {Key? key, required this.url, required this.isSelected})
      : super(key: key);

  @override
  State<SelectedImageWidget> createState() => _SelectedImageWidgetState();
}

class _SelectedImageWidgetState extends State<SelectedImageWidget> {
  @override
  Widget build(BuildContext context) => ClipRRect(
      borderRadius: BorderRadius.circular(widget.isSelected ? 80 : 20),
      child: Image.asset(
        widget.url,
        fit: BoxFit.cover,
      ));
}
