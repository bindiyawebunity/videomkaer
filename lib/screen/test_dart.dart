import 'package:flutter/material.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

enum TextAlignOption {
  topLeft,
  topCenter,
  topRight,
  centerLeft,
  center,
  centerRight,
  bottomLeft,
  bottomCenter,
  bottomRight,
}

class _HomeScreenState extends State<HomeScreen> {
  String text = '';
  Color textColor = Colors.white;
  TextAlignOption textAlign = TextAlignOption.center;
  double textPositionX = 0.0;
  double textPositionY = 0.0;
  double fontSize = 24.0;

  TextEditingController textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Stack(
          children: [
            Image.asset(
              'assets/myImage.png',
              fit: BoxFit.cover,
              height: double.infinity,
              width: double.infinity,
            ),
            Positioned(
              left: textPositionX,
              top: textPositionY,
              child: GestureDetector(
                onPanUpdate: (details) {
                  setState(() {
                    textPositionX += details.delta.dx;
                    textPositionY += details.delta.dy;
                  });
                },
                child: Container(
                  alignment: _getTextAlign(),
                  child: Text(
                    text,
                    style: TextStyle(
                      fontSize: fontSize,
                      color: textColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 20,
              left: 20,
              right: 20,
              child: Column(
                children: [
                  TextField(
                    controller: textEditingController,
                    decoration: const InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      labelText: 'Enter Text',
                    ),
                    onChanged: (value) {
                      setState(() {
                        text = value;
                      });
                    },
                  ),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text('Text Color:'),
                      const SizedBox(width: 10),
                      ColorPickerButton(
                        selectedColor: textColor,
                        onColorChanged: (color) {
                          setState(() {
                            textColor = color;
                          });
                        },
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text('Font Size:'),
                      const SizedBox(width: 10),
                      Slider(
                        value: fontSize,
                        min: 10.0,
                        max: 50.0,
                        divisions: 40,
                        onChanged: (value) {
                          setState(() {
                            fontSize = value;
                          });
                        },
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTextAlignButton(TextAlignOption option) {
    bool isSelected = textAlign == option;
    return GestureDetector(
      onTap: () {
        setState(() {
          textAlign = option;
        });
      },
      child: Container(
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: isSelected ? Colors.blue : Colors.transparent,
        ),
        child: Icon(
          _getTextAlignIcon(option),
          color: isSelected ? Colors.white : Colors.black,
        ),
      ),
    );
  }

  Alignment _getTextAlign() {
    switch (textAlign) {
      case TextAlignOption.topLeft:
        return Alignment.topLeft;
      case TextAlignOption.topCenter:
        return Alignment.topCenter;
      case TextAlignOption.topRight:
        return Alignment.topRight;
      case TextAlignOption.centerLeft:
        return Alignment.centerLeft;
      case TextAlignOption.center:
        return Alignment.center;
      case TextAlignOption.centerRight:
        return Alignment.centerRight;
      case TextAlignOption.bottomLeft:
        return Alignment.bottomLeft;
      case TextAlignOption.bottomCenter:
        return Alignment.bottomCenter;
      case TextAlignOption.bottomRight:
        return Alignment.bottomRight;
    }
  }

  IconData _getTextAlignIcon(TextAlignOption option) {
    switch (option) {
      case TextAlignOption.topLeft:
        return Icons.format_align_left;
      case TextAlignOption.topCenter:
        return Icons.format_align_center;
      case TextAlignOption.topRight:
        return Icons.format_align_right;
      case TextAlignOption.centerLeft:
        return Icons.format_align_left;
      case TextAlignOption.center:
        return Icons.format_align_center;
      case TextAlignOption.centerRight:
        return Icons.format_align_right;
      case TextAlignOption.bottomLeft:
        return Icons.format_align_left;
      case TextAlignOption.bottomCenter:
        return Icons.format_align_center;
      case TextAlignOption.bottomRight:
        return Icons.format_align_right;
    }
  }
}

class ColorPickerButton extends StatefulWidget {
  final Color selectedColor;
  final ValueChanged<Color> onColorChanged;

  const ColorPickerButton({
    super.key,
    required this.selectedColor,
    required this.onColorChanged,
  });

  @override
  _ColorPickerButtonState createState() => _ColorPickerButtonState();
}

class _ColorPickerButtonState extends State<ColorPickerButton> {
  Color currentColor = Colors.transparent;

  @override
  void initState() {
    super.initState();
    currentColor = widget.selectedColor;
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: const Text('Select Color'),
              content: SingleChildScrollView(
                child: ColorPicker(
                  pickerColor: currentColor,
                  onColorChanged: (color) {
                    setState(() {
                      currentColor = color;
                    });
                  },
                  pickerAreaHeightPercent: 0.8,
                ),
              ),
              actions: [
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                    widget.onColorChanged(currentColor);
                  },
                  child: const Text('OK'),
                ),
              ],
            );
          },
        );
      },
      child: Container(
        width: 30,
        height: 30,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: currentColor,
        ),
      ),
    );
  }
}
