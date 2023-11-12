import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String buttonText;
  final double width;
  final double height;

  const CustomButton({
    Key? key,
    required this.onPressed,
    this.width = double.infinity,
    this.height = 50.0,
    required this.buttonText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: ElevatedButton(
        onPressed: onPressed,
        child: Text(buttonText),
      ),
    );
  }
}
