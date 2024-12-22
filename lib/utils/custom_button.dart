import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final Color color;
  final Color? borderColor;
  final String buttonText;
  final VoidCallback onPressed;

  const CustomButton({
    super.key,
    required this.color,
    this.borderColor,
    required this.buttonText,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 336,
      height: 52,
      decoration: BoxDecoration(
        color: color, // Button background color
        borderRadius: BorderRadius.circular(25), // Rounded corners
        border: borderColor != null
            ? Border.all(color: borderColor!, width: 2) // Border if provided
            : null,
      ),
      child: MaterialButton(
        onPressed: onPressed,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25),
        ),
        child: Text(
          buttonText,
          style: TextStyle(
            color: Colors.black, // Text color
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
