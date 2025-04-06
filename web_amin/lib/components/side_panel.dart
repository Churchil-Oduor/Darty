import 'package:flutter/material.dart';
import 'package:web_amin/components/utils/custom_button.dart';

class SidePanel extends StatefulWidget {
  final List<String> items;
  final Function(String) SelectedItem;

  const SidePanel({super.key, required this.items, required this.SelectedItem});

  @override
  State<SidePanel> createState() => _SidePanelState();
}

class _SidePanelState extends State<SidePanel> {
  int _selectedItem = -1;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(height: 20),
          Text("Admin Panel", style: TextStyle(fontWeight: FontWeight.bold)),

          Padding(
            padding: EdgeInsets.only(left: 10, top: 20),
            child: Row(
              children: [
                Image(
                  image: AssetImage("assets/JKUATCU LOGO.png"),
                  height: 70,
                  width: 70,
                ),
                SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,

                  children: [
                    Text("JKUAT"),
                    SizedBox(height: 1),
                    Text("Christian Union"),
                  ],
                ),
              ],
            ),
          ),

          //space inbetween the Padding and the Text
          SizedBox(height: 20),

          Text("View & Manage", style: TextStyle(fontWeight: FontWeight.bold)),

          SizedBox(height: 10),
          Flexible(
            child: ListView.builder(
              itemCount: widget.items.length,
              itemBuilder: (context, index) {
                return ListTile(
                  dense: true,
                  title: Text(widget.items[index], style: TextStyle(
                    fontWeight: _selectedItem == index ? FontWeight.bold : FontWeight.normal,
                    
                  )),
                  onTap: () {
                    setState(() {
                      _selectedItem = index;
                    });
                    widget.SelectedItem(widget.items[index]);
                  },
                );
              },
            ),
          ),

          Align(
            alignment: Alignment.bottomCenter,

            child: SizedBox(
              height: 50,
              width: 230,

              ///Nomination Button
              child: CustomButton(
                button_label: "Open Nominations",
                color_grad_1: const Color.fromARGB(255, 245, 60, 47),
                color_grad_2: const Color.fromARGB(255, 141, 12, 3),
                border_radius: 8,
                onClick: () => {},
              ),
            ),
          ),

          ///Made by JKUATCU IT team text
          Padding(
            padding: EdgeInsets.only(left: 22, top: 20, bottom: 10),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Made By JKUATCU IT",
                style: TextStyle(fontSize: 10),
                textAlign: TextAlign.start,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
