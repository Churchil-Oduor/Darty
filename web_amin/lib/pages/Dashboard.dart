import 'package:flutter/material.dart';
import 'package:web_amin/components/custom_card.dart';
import 'package:web_amin/components/dashboard_table.dart';
import 'package:web_amin/components/side_panel.dart';

class Dashboard extends StatelessWidget {
  Dashboard({super.key});

  final List items = [
    "Upcoming Tasks",
    "Executive Committee",
    "ETs & Ministries",
    "Students & Associates",
    "Upcoming Events",
    "Summons",
    "Suggestions",
  ];

  final double radius = 10;
  final double grid_spacing = 10;
  final double card_height = 130;

  void tapped() {
    print("I have been tapped");
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: const Color.fromARGB(232, 117, 125, 134),
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
                print('$selecteditem');
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
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [Icon(Icons.notifications_none)],
                    ),
                  ),

                  ///creating the Grid view
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
                                  card_color: const Color.fromARGB(
                                    255,
                                    240,
                                    55,
                                    41,
                                  ),
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
                                  onClick: () => print("clicked 3"),
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
                            padding: const EdgeInsets.only(
                              top: 20,
                              left: 30,
                              right: 30,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                SizedBox(height: 20),
                                Text(
                                  "Upcoming Tasks/This Week",
                                  style: TextStyle(
                                    fontSize: 17,
                                    fontWeight: FontWeight.w100,
                                    fontStyle: FontStyle.normal,
                                  ),
                                ),
                                Spacer(),

                                Image.asset(
                                  'assets/calender.png',
                                  height: 45,
                                  width: 45,
                                ),
                              ],
                            ),
                          ),

                          SizedBox(height: 30),

                          Padding(
                            padding: const EdgeInsets.only(
                              top: 1,
                              left: 50,
                              right: 50,
                            ),

                            child: DashboardTable(
                              colm_titles: [
                                "Activity",
                                "Date",
                                "Sermon",
                                "Action",
                              ],
                              data: [
                                ["Sunday Service", "01/01/01", "Hermaneutics"],
                                ["Sunday Service", "01/01/01", "Hermaneutics"],
                                ["Sunday Service", "01/01/01", "Hermaneutics"],
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

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
