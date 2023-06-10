import 'package:flutter/material.dart';
import 'package:videomaker/model/TextStyle.dart';

class CommonElevatedButton extends StatefulWidget {
  final Gradient? gradient;
  final double height;
  final double width;
  final String text;
  final Color? backgroundColor;
  final void Function() onPressed;
  const CommonElevatedButton(
      {Key? key,
      this.gradient,
      required this.width,
      required this.height,
      required this.text,
      this.backgroundColor,
      required this.onPressed})
      : super(key: key);

  @override
  State<CommonElevatedButton> createState() => _CommonElevatedButtonState();
}

class _CommonElevatedButtonState extends State<CommonElevatedButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: widget.height,
      width: widget.width,
      decoration: BoxDecoration(
          color: widget.backgroundColor,
          borderRadius: BorderRadius.circular(20.0),
          gradient: widget.gradient),
      child: ElevatedButton(

        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.transparent,
          disabledForegroundColor: Colors.transparent.withOpacity(0.38),
          disabledBackgroundColor: Colors.transparent.withOpacity(0.12),
        ),
        onPressed: widget.onPressed,
        child: Center(
          child: Text(
            widget.text,
            style: TextStyleFile.elevatedButtonText,
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
