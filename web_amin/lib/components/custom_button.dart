import 'package:flutter/material.dart';

/// NominationButton - this is the nominationbutton
class CustomButton extends StatelessWidget {
  final String button_label;
  final Color color_grad_1, color_grad_2;
  final VoidCallback onClick;

  const CustomButton({
    super.key,
    required this.button_label,
    required this.color_grad_1,
    required this.color_grad_2,
    required this.onClick,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [color_grad_1, color_grad_2], // Define your gradient colors
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(8), // Ensure rounded corners
      ),
      child: ElevatedButton(
        onPressed: onClick,
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.transparent, // Transparent background
          shadowColor: Colors.black.withOpacity(0.5), // Keep shadow effect
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Text(button_label), SizedBox(width: 5)],
        ),
      ),
    );
  }
}

