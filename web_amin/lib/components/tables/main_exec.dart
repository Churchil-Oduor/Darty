import 'package:flutter/material.dart';
import 'package:web_amin/components/utils/CustomPopup.dart';
import 'package:web_amin/components/work_area.dart';
import 'package:web_amin/pages/Dashboard.dart';

const double table_pad = 30;
const double border_radius = 10;
const double table_title_font_size = 20;

class MainExec extends StatelessWidget {
  final Function(AREA, String) manageDisplay;
  MainExec({super.key, required this.manageDisplay});
  final List<String> table_title = ["Executive Committee Members"];

  final List<String> dummy_table_colms = [
    "Position",
    "Name",
    "Contacts",
    "Action",
  ];

  final List<String> days = [
    "ChairPerson",
    "Vice ChairPerson",
    "Treasurer",
    "Missions Co-ordinator",
  ];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: table_pad, left: table_pad),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(border_radius),
        ),
        child: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Text(
                    table_title[0],
                    style: TextStyle(fontSize: table_title_font_size),
                  ),
                ),
              ],
            ),

            Padding(
              padding: const EdgeInsets.only(right: 30.0, left: 60),
              child: Table(
                columnWidths: const {
                  0: FlexColumnWidth(),
                  1: FlexColumnWidth(),
                  2: FlexColumnWidth(),
                  3: FlexColumnWidth(),
                },

                border: null,
                defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                children: [
                  TableRow(
                    children: [
                      Text(dummy_table_colms[0]),
                      Text(dummy_table_colms[1]),
                      Text(dummy_table_colms[2]),
                      Text(dummy_table_colms[3]),
                    ],
                  ),
                  ...List.generate(
                    4,
                    (index) => TableRow(
                      children: [
                        TableCell(
                          child: Padding(
                            padding: const EdgeInsets.only(top: 8.0, bottom: 8),
                            child: Text("data"),
                          ),
                        ),
                        TableCell(child: Text("data")),
                        TableCell(child: Text("data")),
                        TableCell(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 5),
                            child: Align(
                              alignment:
                                  Alignment
                                      .centerLeft, // or centerRight, as you prefer
                              child: ElevatedButton(
                                onPressed: () {
                                  manageDisplay(AREA.form, "main_exec_form");
                                },
                                style: ElevatedButton.styleFrom(
                                  minimumSize: Size(80, 33), // width, height
                                  padding: EdgeInsets.symmetric(horizontal: 12),
                                ),
                                child: Text(
                                  "Manage",
                                  style: TextStyle(fontSize: 10),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
