import 'package:flutter/material.dart';

import 'package:web_amin/components/forms/ExecForm.dart';
import 'package:web_amin/components/side_panel.dart';
import 'package:web_amin/components/work_area.dart';

class Dashboard extends StatefulWidget {
  Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  String table_id = "tasks";
  String display = "general";

  dynamic updateDisplay(String update) {
    setState(() {
      display = update;
    });
  }

  final List<String> items = [
    "Upcoming Tasks",
    "Executive Committee",
    "ETs & Ministries",
    "Accounts",
    "Messages",
  ];

  final List<List<String>> UpcomingTasks = [
    ["Activity", "Date", "Sermon", "Action"],
    ["Sunday Service", "01/01/01", "Hermaneutics"],
    ["Sunday Service", "01/01/01", "Hermaneutics"],
    ["Sunday Service", "01/01/01", "Hermaneutics"],
  ];

  final List<List<String>> LeadersTable = [
    ["Position", "Name", "Contact", "Action"],
    ["Chair Person", "JKUAT TEAM", "+254 01010101"],
    ["Vice Chair", "JKUAT TEAM", "+254 010101010"],
    ["Treasurer", "JKUAT TEAM", "+254 010101010"],
  ];

  final double radius = 10;

  final double grid_spacing = 10;

  final double card_height = 130;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: const Color.fromARGB(232, 237, 239, 241),
      //appBar: AppBar(backgroundColor: Colors.white, elevation: 5),
      body: Row(
        children: [
          Expanded(
            flex: 1,
            child: SidePanel(
              items: items,
              SelectedItem: (selecteditem) {
                switch (selecteditem) {
                  case "Upcoming Tasks":
                    {
                      setState(() {
                        table_id = "tasks";
                        display = "general";
                      });
                    }
                    break;
                  case "Executive Committee":
                    {
                      setState(() {
                        table_id = "exec";
                      });
                    }
                    break;
                  case "ETs & Ministries":
                    {
                      setState(() {
                        table_id = "ets&ministries";
                      });
                  
                    }
                    break;
                  case "Accounts":
                    {
                      setState(() {
                        table_id = "accounts";
                      });
                    }
                    break;

                  case "Suggestions":
                    {
                      setState(() {
                        table_id = "msgs";
                      });
                    }
                    break;
                }
              },
            ),
          ),

          ///Work Area
          Expanded(flex: 4, child: WorkArea(table_id: table_id)),
        ],
      ),
    );
  }
}
