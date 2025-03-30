import 'package:flutter/material.dart';
import 'package:to_do_app/pages/components/my_button.dart';

class DialogBox extends StatelessWidget {
  final controller;
  VoidCallback onSave;
  VoidCallback onCancel;

  DialogBox({
    super.key,
    required this.controller,
    required this.onSave,
    required this.onCancel,
  });

  void saveTask() {}

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.yellow,
      content: Container(
        height: 120,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TextField(
              controller: controller,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Enter Task",
              ),
            ),

            //save and delete buttons
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                MyButton(label: "Save", onPressed: onSave),
                const SizedBox(width: 10),
                MyButton(label: "Cancel", onPressed: onCancel),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
