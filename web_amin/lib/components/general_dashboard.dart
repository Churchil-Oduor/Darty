import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:web_amin/components/custom_card.dart';
import 'package:web_amin/components/dashboard_table.dart';

class GeneralDashboard extends StatefulWidget {
  final String tableState;
  final List<String> items;
  final List<List<String>> upcomingTasks;
  final List<List<String>> leadersTable;
  final Function(String) updateDisplay;

  GeneralDashboard({
    super.key,
    required this.updateDisplay,
    required this.items,
    required this.tableState,
    required this.upcomingTasks,
    required this.leadersTable,
  });

  @override
  State<GeneralDashboard> createState() => _GeneralDashboardState();
}

class _GeneralDashboardState extends State<GeneralDashboard> {
  final double radius = 10;
  final double grid_spacing = 10;
  final double card_height = 130;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          child: Padding(
            padding: EdgeInsets.only(left: 10, top: 50, right: 10),
            child: Column(
              children: [
                Row(
                  children: [
                    Text("Admin Dashboard"),
                    Spacer(),
                    Text("overview"),
                  ],
                ),
                SizedBox(height: 20),

                ///Text Field
                Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: CustomCard(
                        card_height: card_height,
                        card_color: Colors.amber,
                        onClick: () => {print("clicked 1")},
                        title: "Executive Committees",
                      ),
                    ),
                    SizedBox(width: grid_spacing),
                    Expanded(
                      flex: 1,
                      child: CustomCard(
                        card_height: card_height,
                        card_color: const Color.fromARGB(255, 240, 55, 41),
                        onClick: () => {print("clicked 2")},
                        title: "ETs & Ministries",
                      ),
                    ),
                    SizedBox(width: grid_spacing),
                    Expanded(
                      flex: 1,
                      child: CustomCard(
                        card_height: card_height,
                        card_color: Colors.blue,
                        onClick: () => {},
                        title: "Students & Associates",
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),

        SizedBox(height: 20),
        // Putting the content Table down here
        Padding(
          padding: EdgeInsets.only(left: 60, right: 60),
          child: Container(
            height: 300,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(radius),
            ),
            child: Column(
              children: [
                //Title of the Table + the Manage button with the icon
                Padding(
                  padding: const EdgeInsets.only(top: 20, left: 30, right: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(height: 20),
                      Text(
                        widget.tableState == "tasks"
                            ? "Upcoming Tasks/This Week"
                            : "Members of the Executive Committee",
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w100,
                          fontStyle: FontStyle.normal,
                        ),
                      ),
                      Spacer(),

                      Image.asset('assets/calender.png', height: 45, width: 45),
                    ],
                  ),
                ),

                SizedBox(height: 30),

                Padding(
                  padding: const EdgeInsets.only(top: 1, left: 50, right: 50),

                  child: DashboardTable(
                    table_id: widget.tableState,
                    updateDisplay: widget.updateDisplay ,
                    colm_titles:
                        widget.tableState == "tasks"
                            ? widget.upcomingTasks[0]
                            : widget.leadersTable[0],
                    data: [
                      widget.tableState == "tasks"
                          ? widget.upcomingTasks[1]
                          : widget.leadersTable[1],
                      widget.tableState == "tasks"
                          ? widget.upcomingTasks[2]
                          : widget.leadersTable[2],
                      widget.tableState == "tasks"
                          ? widget.upcomingTasks[3]
                          : widget.leadersTable[3],
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
