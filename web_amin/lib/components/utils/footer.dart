import 'package:flutter/material.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset("assets/copyright.png", height: 20, width: 20),
        Text("Copy Right JKUATCU 2025", style: TextStyle(fontSize: 10)),
      ],
    );
  }
}
