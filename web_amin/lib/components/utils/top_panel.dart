import 'package:flutter/material.dart';

class TopPanel extends StatelessWidget {
  const TopPanel({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      color: const Color.fromARGB(255, 255, 255, 255),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [Padding(
          padding: const EdgeInsets.only(right: 8.0),
          child: Icon(Icons.notifications),
        )],),
    );
  }
}
