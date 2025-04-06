import 'package:flutter/material.dart';
import 'package:web_amin/components/utils/custom_button.dart';

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
            SizedBox(height: 20),
            Row(
              children: [
                Text(
                  "Click to upload poster",
                  style: TextStyle(
                    color: const Color.fromARGB(255, 148, 2, 2),
                    fontSize: 15,
                  ),
                ),
              ],
            ),
            SizedBox(height: 20,),
            TextField(
              controller: inputcontroller,
              decoration: InputDecoration(
                contentPadding: EdgeInsets.all(20),
                filled: true,
                fillColor: const Color.fromARGB(255, 236, 236, 236),
                hintText: "Message...",
                border: OutlineInputBorder(borderSide: BorderSide(width: 10)),
              ),
            ),
          ],
        ),

        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                CustomButton(
                  button_label: "submit",
                  color_grad_1: const Color.fromARGB(255, 245, 60, 47),
                  color_grad_2: const Color.fromARGB(255, 141, 12, 3),
                  border_radius: 3,
                  onClick: () => {Navigator.pop(context)},
                ),
                SizedBox(width: 10),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text("Cancel"),
                ),
            
                    
              ],
            ),
          ),
        ],
      );
    },
  );
}
