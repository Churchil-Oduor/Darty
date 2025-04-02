import 'package:flutter/material.dart';

import 'package:web_amin/components/Forms.dart';
import 'package:web_amin/components/general_dashboard.dart';
import 'package:web_amin/components/side_panel.dart';

class Dashboard extends StatefulWidget {
  Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  String tableState = "tasks";
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
    "Students & Associates",
    "Upcoming Events",
    "Summons",
    "Suggestions",
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
              items: [
                "Upcoming Tasks",
                "Executive Committee",
                "ETs & Ministries",
                "Accounts",
                "Suggestions",
              ],

              SelectedItem: (selecteditem) {
                switch (selecteditem) {
                  case "Upcoming Tasks":
                    {
                      setState(() {
                        tableState = "tasks";
                        display = "general";
                      });
                    }
                    break;
                  case "Executive Committee":
                    {
                      setState(() {
                        tableState = "exec";
                      });
                    }
                    break;
                  case "ETs & Ministries":
                    {}
                    break;
                  case "Accounts":
                    {}
                    break;

                  case "Suggestions":
                    {}
                    break;
                }
              },
            ),
          ),

          ///The Dashboard is defined here
          //
          //
          Expanded(
            flex: 4,
            child: Container(
              color: const Color.fromARGB(255, 246, 248, 248),
              child: Column(
                children: [
                  Container(
                    color: Colors.white,
                    height: 60,
                    child: Padding(
                      padding: const EdgeInsets.only(right: 30),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [Icon(Icons.notifications_none)],
                      ),
                    ),
                  ),

                  ///creating the Grid view
                  ///
                  display == "general"
                      ? GeneralDashboard(
                        updateDisplay: (p0) {
                          setState(() {
                            display = p0;
                          });
                        },
                        items: items,
                        tableState: tableState,
                        upcomingTasks: UpcomingTasks,
                        leadersTable: LeadersTable,
                      )
                      : ExecForm(),

                  Spacer(),

                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          "assets/copyright.png",
                          height: 20,
                          width: 20,
                        ),
                        Text(
                          "Copy Right JKUATCU 2025",
                          style: TextStyle(fontSize: 10),
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
