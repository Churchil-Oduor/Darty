import 'package:flutter/material.dart';

class SelectLevel extends StatelessWidget {
  final VoidCallback onSelected;
  const SelectLevel({super.key, required this.onSelected});

  void clicked() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Select Level")),
      body: Column(
        children: [
         
          
        ],
      ),
    );
  }
}
