import 'package:flutter/material.dart';
import 'package:nijaat_app/constants/colors.dart';

class InputTextField extends StatelessWidget {
  final Color iconColor;
  final IconData leadingIcon;
  final String hintText;
  final TextEditingController? textEditingController;

  const InputTextField({
    super.key,
    required this.iconColor,
    required this.leadingIcon,
    required this.hintText,
    this.textEditingController,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 336,
      height: 55,
      decoration: BoxDecoration(
        color: textFieldColor, // Background color
        borderRadius: BorderRadius.circular(15),
      ),
      child: TextField(
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: const TextStyle(
            color: bottomText,
            fontSize: 18,
          ), // Hint text color
          prefixIcon: Icon(
            leadingIcon,
            color: iconColor,
            size: 29, // Icon color matches the border color
          ),
          border: InputBorder.none,
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
        ),
        style: const TextStyle(
            color: bottomText), // Text color inside the input field
      ),
    );
  }
}
