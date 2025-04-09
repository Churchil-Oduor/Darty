import 'package:flutter/material.dart';
import 'package:web_amin/pages/Dashboard.dart';

const double general_pad = 15;
const double border_radius = 10;

class EtsMinSubcom extends StatefulWidget {
  final Function(AREA, String) manageDisplay;
  EtsMinSubcom({super.key, required this.manageDisplay});

  @override
  State<EtsMinSubcom> createState() => _EtsMinSubcomState();
}

List<String> option = [
  "Evangelistic Teams (ET)",
  "Ministries",
  "Sub-committees",
];

List<String> table_title = ["Name", "Action"];

class _EtsMinSubcomState extends State<EtsMinSubcom> {
  String optionSelected = option[0];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: general_pad),
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(border_radius),
              ),
              child: Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(top: 15.0),
                    child: Text(
                      "Select What to Manage",

                      /// style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),

                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        RadioListTile(
                          title: const Text(
                            "Evangelistic Teams",
                            style: TextStyle(fontSize: 15),
                          ),
                          value: option[0],
                          groupValue: optionSelected,
                          onChanged: (value) {
                            setState(() {
                              optionSelected = value!;
                            });
                          },
                          dense: true,
                          activeColor: Colors.black,
                        ),
                        RadioListTile(
                          title: const Text("Ministries"),
                          value: option[1],
                          groupValue: optionSelected,
                          onChanged: (value) {
                            setState(() {
                              optionSelected = value!;
                            });
                          },
                          dense: true,
                          visualDensity: VisualDensity(vertical: -4),
                          activeColor: Colors.black,
                        ),
                        RadioListTile(
                          title: const Text("Subcommittees"),
                          value: option[2],
                          groupValue: optionSelected,
                          onChanged: (value) {
                            setState(() {
                              optionSelected = value!;
                            });
                          },
                          dense: true,
                          activeColor: Colors.black,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(width: 10),
          Expanded(
            flex: 3,
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
                        padding: const EdgeInsets.all(15.0),
                        child: Text("$optionSelected"),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 30),
                    child: Table(
                      border: null,
                      columnWidths: const {
                        0: FlexColumnWidth(),
                        1: FlexColumnWidth(),
                      },
                      defaultVerticalAlignment:
                          TableCellVerticalAlignment.middle,
                      children: [
                        TableRow(
                          children: [
                            Text(table_title[0]),
                            Text(table_title[1]),
                          ],
                        ),
                        ...List.generate(
                          4,
                          (value) => TableRow(
                            children: [
                              TableCell(
                                child: Text("South Rift Evangelistic Team"),
                              ),
                              TableCell(
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                    vertical: 5,
                                  ),
                                  child: Align(
                                    alignment:
                                        Alignment
                                            .centerLeft, // or centerRight, as you prefer
                                    child: ElevatedButton(
                                      onPressed: () {
                                        widget.manageDisplay(AREA.form, "ets_subcom");
                                      },
                                      style: ElevatedButton.styleFrom(
                                        minimumSize: Size(
                                          80,
                                          33,
                                        ), // width, height
                                        padding: EdgeInsets.symmetric(
                                          horizontal: 12,
                                        ),
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
          ),
        ],
      ),
    );
  }
}
