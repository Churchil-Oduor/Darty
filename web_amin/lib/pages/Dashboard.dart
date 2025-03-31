import 'package:flutter/material.dart';
import 'package:web_amin/components/custom_card.dart';
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
      backgroundColor: const Color.fromARGB(232, 166, 177, 192),
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
                  SizedBox(height: 50),
                  Padding(
                    padding: EdgeInsets.only(left: 10, right: 10),
                    child: Row(
                      children: [
                        Expanded(
                          flex: 1,
                          child: Container(
                            height: 300,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(radius),
                            ),
                            child: Text(
                              "Messages",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 13,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 10),
                        Expanded(
                          flex: 2,
                          child: Container(
                            height: 300,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(radius),
                            ),
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
