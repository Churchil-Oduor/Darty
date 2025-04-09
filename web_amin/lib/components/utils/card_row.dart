import 'package:flutter/material.dart';
import 'package:web_amin/components/utils/custom_card.dart';

class CardRow extends StatelessWidget {
  const CardRow({super.key});

  final double radius = 10;
  final double grid_spacing = 10;
  final double card_height = 130;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10.0, left: 8, right: 8, bottom: 10),
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: CustomCard(
              card_height: card_height,
              card_color: Colors.amber,
              onClick: () => {print("clicked 1")},
              title: "Executive Committees",
              details: "\n\n\nMain                        10 members",
            ),
          ),
          SizedBox(width: grid_spacing),
          Expanded(
            flex: 1,
            child: CustomCard(
              card_height: card_height,
              card_color: const Color.fromARGB(255, 240, 55, 41),
              onClick: () => {print("clicked 2")},
              title: "ETs & Ministries",
              details:
                  "\nETs                        \t\t\t\t\t\t\t\t\t\t\t10\nMinistries                        20\nSub-Committees            10",
            ),
          ),
          SizedBox(width: grid_spacing),
          Expanded(
            flex: 1,
            child: CustomCard(
              card_height: card_height,
              card_color: Colors.blue,
              onClick: () => {},
              title: "Students & Associates",
              details:
                  "\nStudents in Session        1000\nStudents out of Session   500\nAssociates                        1000",
            ),
          ),
        ],
      ),
    );
  }
}
