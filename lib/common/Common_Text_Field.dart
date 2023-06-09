import 'package:flutter/material.dart';
import 'package:videomaker/model/color.dart';

class CommonTextField extends StatefulWidget {
  final TextEditingController controller;
  final IconData iconData;
  final String? hintText;
  final String? Function(String?) validator;

  const CommonTextField({
    Key? key,
    required this.controller,
    required this.iconData,
    this.hintText,
    required this.validator,
  }) : super(key: key);

  @override
  State<CommonTextField> createState() => _CommonTextFieldState();
}

class _CommonTextFieldState extends State<CommonTextField> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: const TextStyle(color: Colors.black),
      validator: widget.validator,
      controller: widget.controller,
      decoration: InputDecoration(
          filled: true,
          hintText: widget.hintText,
          prefixIcon: Icon(widget.iconData),
          prefixIconColor: Colors.black,
          fillColor: Colors.white,
          border: OutlineInputBorder(
              borderSide: BorderSide(color: ColorFile.textFieldColor))),
    );
  }
}
