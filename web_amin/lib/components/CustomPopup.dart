import 'package:flutter/material.dart';

const double radius = 5;
const double titlesize = 15;
void showDialogBox(BuildContext context) {
  TextEditingController inputcontroller = TextEditingController();
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(radius)),
        ),
        title: Row(
          children: [
            Text("Sunday Service", style: TextStyle(fontSize: titlesize)),
            SizedBox(width: 250),
            Text("01/01/01", style: TextStyle(fontSize: titlesize)),
          ],
        ),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextField(
              controller: inputcontroller,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderSide: BorderSide(width: 10)
                )
              ),
            ),
          ],
        ),
      );
    },
  );
}
