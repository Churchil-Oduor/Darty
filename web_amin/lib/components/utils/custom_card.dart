import 'package:flutter/material.dart';

const double radius = 7;

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
          // This one (Container with rounded corners)
          Container(
            decoration: BoxDecoration(
              color: card_color,
              borderRadius: BorderRadius.circular(radius), // Rounded corners
            ),
          ),

          Positioned(
            left: 0,
            right: 0,
            child: Container(
              height: card_height - 20,
              decoration: BoxDecoration(
                color: card_color,
                borderRadius: BorderRadius.circular(radius), // Rounded corners
              ),
              child: Material(
                elevation: 1.3,
                color: card_color,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(radius),
                  topRight: Radius.circular(radius),
                ),
                child: InkWell(
                  onTap: onClick,
                  borderRadius: BorderRadius.circular(
                    radius,
                  ), // Rounded corners
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Column(
                      children: [
                        ////Will Add text later on
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
