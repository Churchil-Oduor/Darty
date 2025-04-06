import 'package:flutter/material.dart';

const double general_pad = 15;
const double border_radius = 10;

class EtsMinSubcom extends StatefulWidget {
  EtsMinSubcom({super.key});

  @override
  State<EtsMinSubcom> createState() => _EtsMinSubcomState();
}

List<String> option = ["ets", "ministries", "subcom"];

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
                    padding: EdgeInsets.only(top: 10.0),
                    child: Text(
                      "Select What to Manage",
                      style: TextStyle(fontWeight: FontWeight.bold),
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
              child: Center(
                child: Text(
                  "Selected: $optionSelected",
                  style: const TextStyle(fontSize: 18),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
