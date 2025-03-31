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
    return SizedBox(
      height: card_height,
      width: 40,
      child: Stack(
        children: [
          Container(color: card_color),

          Positioned(
            left: 0,
            right: 0,
            //this container should fill the container in width
            child: Container(
              height: card_height - 20,
              color: card_color,
              child: Material(
                elevation: 3,
                color: card_color,
                child: InkWell(
                  onTap: () {},
                  child: Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Column(
                      children: [
                        Text(title),
                      ],
                    ),

                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
