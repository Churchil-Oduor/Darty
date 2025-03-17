import 'package:flutter/material.dart';

const double radius = 10;

class CustomCard extends StatelessWidget {
  final Color card_color;
  final double card_height;
  final VoidCallback onClick;
  final String title;


  const CustomCard({
    super.key,
    required this.card_height,
    required this.card_color,
    required this.onClick,
    required this.title,

  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: card_height,
      width: 40,
      child: Material(
        elevation: 3,
        borderRadius: BorderRadius.circular(radius),
        color: card_color,
        child: InkWell(
          onTap: () {},
          borderRadius: BorderRadius.circular(radius),
          child: Padding(
            padding: EdgeInsets.all(radius * 2),
            child: Text(title, style: TextStyle(color: Colors.white)),
          ),
        ),
      ),
    );
  }
}
